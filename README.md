
# ZX EMU Input Lag Test

**ZX EMU Input Lag Test** is a small ZX Spectrum utility for visually measuring emulator input latency using slow-motion video.
It helps determine the delay between a key press and the on-screen reaction, compare emulator configurations, and evaluate run-ahead features.

## What It Does
The tool waits for any key press in an endless loop and reacts **immediately** - without waiting for interrupts - to minimize internal delay. Once a key press is detected, it:
- Changes the border color to mark the exact moment the input was registered (primary visual cue)
- Plays a beep to allow measuring audio delay vs video
- Displays keyboard state so you can verify the detected input
- Shows a frame counter that starts at the first interrupt _after_ the key press, increasing once per frame

The frame counter is essential for evaluating **run-ahead**:
If run-ahead is enabled, you may still see a typical border-change delay, but the emulated state (and counter) may "jump ahead" as if the key was pressed several frames earlier - making run-ahead effects clearly visible on video.

## Audio Delay Notes
The beep helps measure audio latency, but keep in mind:
- Smartphone cameras often introduce **their own A/V offset**
- First measure your camera's own delay (e.g., clapper test), then subtract it
- Audio is secondary - **video timing** is the primary focus of this tool

## Builds
Pre-built versions are available in the repository:
- [Developer builds](tree/main/builds)
- [Builds with **TAP** and **TRD** loaders](tree/main/builds/loaders)

## Use Cases
- Compare **input lag** across emulators
- Evaluate **run-ahead** behavior
- Detect audio/video desync on playback devices
- Record side-by-side slow-motion videos for objective comparison

> Note: This is a **synthetic test**. Run-ahead is best _felt_ in real gameplay (50/25 FPS). For real-world comparisons, record the same game across emulators and sync the videos.

.koval'2025
