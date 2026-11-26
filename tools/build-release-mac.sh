#!/bin/bash
# Builds a Sacid plug-in on a Mac the way CI does, and uploads it to a release here:
# a universal VST3 + app (Apple Silicon and Intel, macOS 11+), its sound checks,
# pluginval at strictness 10, ad-hoc signed, zipped as <Product>-macos.zip.
#
#   bash build-release-mac.sh <plug-in repo> <release tag>
#   bash build-release-mac.sh saciddubfog saciddubfog-1.1
#
# For when GitHub Actions can't run. Needs:
#   - Xcode command line tools:   xcode-select --install
#   - cmake:                      brew install cmake
#   - gh, signed in:              brew install gh && gh auth login
#     (with access to the plug-in's repository and to sacid-plugins)
# The release (it may be a draft) must already exist on aleksandrsvoboda/sacid-plugins.
set -euo pipefail

OWNER=aleksandrsvoboda
repo="${1:?usage: build-release-mac.sh <plug-in repo> <release tag>}"
tag="${2:?usage: build-release-mac.sh <plug-in repo> <release tag>}"

say() { printf '\n== %s\n' "$*"; }
for tool in cmake gh git xcrun; do
    command -v "$tool" >/dev/null || { echo "Missing $tool (see the top of this script)."; exit 1; }
done
gh auth status >/dev/null 2>&1 || { echo "gh is not signed in: run  gh auth login"; exit 1; }
gh release view "$tag" -R "$OWNER/sacid-plugins" >/dev/null || { echo "No release $tag on $OWNER/sacid-plugins."; exit 1; }

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT
cd "$work"

say "Getting $OWNER/$repo (main, with JUCE)"
gh repo clone "$OWNER/$repo" src -- --depth 1 --recurse-submodules --shallow-submodules -q
cd src
product="$(sed -nE 's/^project\(([A-Za-z0-9]+) .*/\1/p' CMakeLists.txt | head -1)"
check="$(sed -nE 's/^juce_add_console_app\(([A-Za-z0-9]+) .*/\1/p' CMakeLists.txt | head -1)"
echo "$product $(git log -1 --format='%h %s'), check tool $check"

say "Building (universal, macOS 11+)"
cmake -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_OSX_ARCHITECTURES="arm64;x86_64" -DCMAKE_OSX_DEPLOYMENT_TARGET=11.0 >/dev/null
cmake --build build --config Release --parallel "$(sysctl -n hw.ncpu)" \
    --target "${product}_VST3" --target "${product}_Standalone" --target "$check" > build.log 2>&1 \
    || { tail -40 build.log; echo "Build failed (full log above)."; exit 1; }
art="build/${product}_artefacts/Release"
lipo -archs "$art/VST3/$product.vst3/Contents/MacOS/$product"

say "Sound checks"
"$(find "build/${check}_artefacts" -type f -name "$check" | head -1)" check-out | tail -5

say "pluginval (strictness 10)"
curl -fsSL -o pluginval.zip https://github.com/Tracktion/pluginval/releases/latest/download/pluginval_macOS.zip
unzip -q pluginval.zip
codesign --force --deep --sign - "$art/VST3/$product.vst3"
./pluginval.app/Contents/MacOS/pluginval --strictness-level 10 --skip-gui-tests --validate-in-process \
    --validate "$art/VST3/$product.vst3" > pluginval.log 2>&1 \
    || { tail -40 pluginval.log; echo "pluginval failed."; exit 1; }
echo "pluginval passed"

say "Packaging"
mkdir stage
cp -R "$art/VST3/$product.vst3" "$art/Standalone/$product.app" stage/
if [ -d m4l/device ]; then   # THREAD ships its Max for Live device too
    mkdir -p "stage/Max for Live"
    find m4l/device -maxdepth 1 -type f \( -name '*.amxd' -o -name '*.js' \) -exec cp {} "stage/Max for Live/" \;
fi
codesign --force --deep --sign - "stage/$product.vst3"
codesign --force --deep --sign - "stage/$product.app"
cp packaging/README-mac.txt stage/README.txt
ditto -c -k --sequesterRsrc stage "$product-macos.zip"
ls -l "$product-macos.zip"

say "Uploading to $tag"
gh release upload "$tag" "$product-macos.zip" -R "$OWNER/sacid-plugins" --clobber
echo "Done: $product-macos.zip is on release $tag."
