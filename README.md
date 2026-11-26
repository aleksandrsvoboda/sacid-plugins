# Sacid plugins

Free VST3 instruments, effects and a MIDI generator for Ableton Live and other DAWs. Each one is also a standalone app on Windows and Linux (SacidThread, SacidOddVoice and SacidDubFog on the Mac too).

| Plugin | What it is | Mac | Windows | Linux |
|---|---|---|---|---|
| **SacidOne** 1.2 | Mono synth with three engines (analog, 4-operator FM, granular), a multimode ladder filter, a 16-step sequencer and 24 Electro / Techno / Minimal presets. | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidone-1.2/SacidOne-macos.zip) | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidone-1.2/SacidOne-win64.zip) | [tar.gz](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidone-1.2/SacidOne-linux-x64.tar.gz) |
| **SacidSampler** 1.1 | Sampler that detects a sample's pitch and plays it in tune on every note, with crossfade loops, time stretch, a granulizer and LFOs. | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidsampler-1.1/SacidSampler-macos.zip) | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidsampler-1.1/SacidSampler-win64.zip) | [tar.gz](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidsampler-1.1/SacidSampler-linux-x64.tar.gz) |
| **SacidKit** 1.1 | TR-808 / TR-909 style drum machine. Shape each drum, play the kit or drag drums into Live as samples. | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidkit-1.1/SacidKit-macos.zip) | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidkit-1.1/SacidKit-win64.zip) | [tar.gz](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidkit-1.1/SacidKit-linux-x64.tar.gz) |
| **Sacid303** 2.1 | TB-303 style bass synth and acid workstation, with a 16-pattern sequencer. | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacid303-2.1/Sacid303-macos.zip) | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacid303-2.1/Sacid303-win64.zip) | [tar.gz](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacid303-2.1/Sacid303-linux-x64.tar.gz) |
| **SacidHalo** 1.0 | *Effect*: a harmonic exciter (even or odd harmonics, filtered) feeding a reverb with attack, decay, size, diffusion and width. | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidhalo-1.0/SacidHalo-macos.zip) | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidhalo-1.0/SacidHalo-win64.zip) | [tar.gz](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidhalo-1.0/SacidHalo-linux-x64.tar.gz) |
| **SacidThread** 1.0 | *MIDI generator*: three interlocking loops (rhythm, pitch, accent) in the spirit of Mutable Instruments Marbles, for hypnotic minimal, microhouse and dub techno. It plays another synth (see below). Mutation, loop lock and a seed you can recall; the standalone app has its own transport and a preview sound. | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidthread-1.0/SacidThread-macos.zip) | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidthread-1.0/SacidThread-win64.zip) | [tar.gz](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidthread-1.0/SacidThread-linux-x64.tar.gz) |
| **SacidOddVoice** 1.0.1 | Mono digital voice for odd short sounds (clicks, wood, bells, rubber basses, ghost noise) on the engine code of Mutable Instruments Plaits: string, FM and noise modes, a low-pass gate that velocity strikes harder, LFO / random / envelope modulation. | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidoddvoice-1.0.1/SacidOddVoice-macos.zip) | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidoddvoice-1.0.1/SacidOddVoice-win64.zip) | [tar.gz](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidoddvoice-1.0.1/SacidOddVoice-linux-x64.tar.gz) |
| **SacidDubFog** 1.0 | *Effect*: live audio into drifting granular textures (the grain engine of Mutable Instruments Clouds: position, size, pitch, density, texture, spread, freeze) and a dark dub delay synced to the tempo (1/8, dotted 1/8, 1/4, with low / high cut and saturation in the repeats). A frozen sound is saved with the project. | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/saciddubfog-1.0/SacidDubFog-macos.zip) | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/saciddubfog-1.0/SacidDubFog-win64.zip) | [tar.gz](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/saciddubfog-1.0/SacidDubFog-linux-x64.tar.gz) |
| **THREAD-M4L** 1.1.2 | *Max for Live MIDI effect*: THREAD on the **same track as your synth**, in front of it like the Arpeggiator (needs Live Suite or Max for Live). The same engine as SacidThread, plus 1.1's per-row DEJA VU, direction, divider, offset, DICE and row presets, and ratchet / octave / gate / humanize chances. | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidthread-m4l-1.1.2/THREAD-M4L.zip) | [zip](https://github.com/aleksandrsvoboda/sacid-plugins/releases/download/sacidthread-m4l-1.1.2/THREAD-M4L.zip) | — |

## Install with one command

Each command lists the plugins (nine on Mac and Windows, eight on Linux), marks the ones you already have, and asks which to install:

```
  1) SacidOne      mono synth: analog / FM / granular + step sequencer   [installed]
  2) SacidSampler  pitch-tracking sampler
  3) SacidKit      808 / 909 drum machine
  4) Sacid303      303 bass synth + sequencer
  5) SacidHalo     harmonic exciter + reverb (effect)
  6) SacidThread   MIDI loop generator, Marbles-style (for another synth)
  7) SacidOddVoice odd short sounds: Plaits string / FM / noise
  8) SacidDubFog   Clouds grains into a dub delay (effect)
  9) THREAD-M4L    THREAD as a Max for Live MIDI effect, same track as the synth

Which ones? Numbers like "1 3 5", Enter = all, q = quit:
```

Type the numbers you want, or press Enter for all of them. Plugins you already have are updated to the newest version, so run the same command again later to update.

### Mac

Open **Terminal** (Cmd+Space, type Terminal), paste this line and press Enter. It asks for your Mac password once, and nothing shows on screen while you type it:

```
curl -fsSL https://raw.githubusercontent.com/aleksandrsvoboda/sacid-plugins/main/install-mac.sh | bash
```

The standalone apps of SacidThread, SacidOddVoice and SacidDubFog go into **Applications**. The plugins aren't notarised by Apple. The installer removes the "downloaded from the internet" block, which is why hand-installed copies get called "damaged". The "Open Anyway" button doesn't work for plugins.

### Windows

Open **PowerShell** (Start menu, type PowerShell), paste this line and press Enter. Allow the administrator prompt:

```
irm https://raw.githubusercontent.com/aleksandrsvoboda/sacid-plugins/main/install-windows.ps1 | iex
```

The plugins go into `C:\Program Files\Common Files\VST3`. The standalone apps go into the Start menu under **Sacid**.

### Linux

Open a terminal and run the command below. No root is needed:

```
curl -fsSL https://raw.githubusercontent.com/aleksandrsvoboda/sacid-plugins/main/install-linux.sh | bash
```

The plugins go into `~/.vst3` and the standalone apps into `~/.local/bin`.

### Then, in Ableton Live

1. Open **Settings > Plug-Ins**.
2. Turn on *Use VST3 Plug-In System Folders*.
3. Click **Rescan**. On a Mac, hold **Option** while you click it.

The plugins are under **Plug-Ins > VST3 > Sacid**. SacidHalo and SacidDubFog are audio effects (under Audio Effects), SacidThread is a MIDI generator, and the other five are instruments.

### THREAD-M4L: on the same track as the synth

THREAD-M4L is a Max for Live device, not a VST. It needs Live Suite, or Standard with the Max for Live add-on. The installer puts it in your User Library under `Presets/MIDI Effects/Max MIDI Effect/THREAD`: `~/Music/Ableton/User Library` on a Mac, `Documents\Ableton\User Library` on Windows. If you moved your User Library (Live: Settings > Library), move the `THREAD` folder there.

In Live, search the browser for **THREAD**, or open **Places > User Library > Presets > MIDI Effects > Max MIDI Effect > THREAD**. Drag it onto a MIDI track **in front of** the synth, where the Arpeggiator would go. Keep `THREAD.amxd` and `thread.js` together.

### SacidThread: playing another synth

SacidThread makes notes, not sound. Live only takes MIDI from plugins that load as instruments, so it loads as one:

1. Put **SacidThread** on a MIDI track. That track stays silent.
2. On a second MIDI track with the synth that should play, set **MIDI From** to the SacidThread track, choose **SacidThread** in the box below it, and set **Monitor** to **In**.
3. Press Play. It follows Live's tempo and song position. Arm the second track and record to keep the notes.
