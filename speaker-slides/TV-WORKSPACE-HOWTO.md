# Putting workspace 10 on the TV (HDMI) for the demo

A tiny helper, `tv-workspace.sh`, pins **workspace 10** onto the HDMI-connected
TV so you can present `presentation.html` on the big screen while keeping your
other workspaces on the laptop.

Workspace 10 is the one your **`SUPER+0`** key switches to (`SUPER+1..9` are
1–9, and `SUPER+0` maps to 10), so on stage you just press `SUPER+0` to bring
the deck up on the TV.

It uses **runtime** `hyprctl` commands only — nothing is written to your
nixerator config, so it's fully reversible and safe to run minutes before
you go live.

## Run it

```fish
~/git/claude-demo/speaker-slides/tv-workspace.sh
```

(First time only: `chmod +x ~/git/claude-demo/speaker-slides/tv-workspace.sh`.)

## What happens

1. **It lists your displays** and pauses. Plug in the TV *before* running so it
   shows up. Find the HDMI line, e.g.:

   ```
   Monitor HDMI-A-1 (ID 1): 1920x1080@60.00 ...
   ```

   Here the output name is **`HDMI-A-1`**.

2. **Press Enter**, then **paste the output name** when asked.

3. **Confirm**, and the script:
   - enables the TV output at its preferred resolution,
   - binds **workspace 10** to the TV (`default:true` so new windows there land
     on it), and
   - moves workspace 10 onto the TV immediately.

## During the demo

- Press **`SUPER+0`** to jump to workspace 10 — it's on the TV now.
- Launch your browser on `presentation.html` there, then `SUPER+F` for
  fullscreen.
- Workspace 10 stays pinned to the TV for the rest of the session.

## Reverting

```fish
hyprctl reload
```

…or simply unplug the TV. Either restores your normal monitor layout.

## Do it by hand (no script)

If you'd rather run the commands yourself, swap `HDMI-A-1` for your real output
name from step 1:

```fish
hyprctl monitors all                                          # find the HDMI name
hyprctl keyword monitor "HDMI-A-1, preferred, auto, 1"        # enable the TV
hyprctl keyword workspace "10, monitor:HDMI-A-1, default:true" # pin ws 10 to it
hyprctl dispatch moveworkspacetomonitor 10 HDMI-A-1           # move it over now
```

Then `SUPER+0` to switch to it.

## Notes / gotchas

- "Workspace 0" in everyday terms = the `0` key = **workspace 10** in Hyprland.
  There is no literal workspace 0 bound to a key in your config.
- The script only changes the **live** session. To make this permanent you'd add
  an `hl.monitor(...)` + `hl.workspace_rule(...)` drop-in under
  `modules/system/...` in nixerator instead — but for a one-off demo, don't
  bother; runtime is lower-risk.
- If `hyprctl monitors all` doesn't show the TV at all, the cable/port isn't
  being detected — re-seat it and re-run, or check `wlr-randr`.
- Output names depend on the physical port (`HDMI-A-1`, `HDMI-A-2`, ...). Always
  read it fresh from step 1 rather than assuming last time's name.
