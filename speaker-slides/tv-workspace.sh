#!/usr/bin/env bash
#
# tv-workspace.sh — pin workspace 10 onto an HDMI-connected TV.
#
# Workspace 10 is the one your SUPER+0 key switches to, so on stage you just
# press SUPER+0 to bring the deck up on the big screen.
#
# Flow:
#   1. Show all displays Hyprland can see (so you can read the HDMI name).
#   2. Pause.
#   3. You paste in the HDMI output name.
#   4. The script enables the output, binds workspace 10, and moves it over.
#
# Everything it does is a runtime `hyprctl keyword` / `dispatch` — nothing is
# written to your nixerator config, so `hyprctl reload` (or unplugging the TV)
# fully reverts it. Safe to run right before a demo.

set -euo pipefail

# The workspace pinned to the TV. 10 == the workspace your SUPER+0 key reaches.
WS=10

if ! command -v hyprctl >/dev/null 2>&1; then
  echo "error: hyprctl not found — are you in a Hyprland session?" >&2
  exit 1
fi

bold() { printf '\033[1m%s\033[0m\n' "$*"; }
rule() { printf '%s\n' "------------------------------------------------------------"; }

# ---------------------------------------------------------------------------
# 1. Show the displays
# ---------------------------------------------------------------------------
rule
bold "Displays Hyprland currently sees:"
rule
# `monitors all` also lists outputs that are connected but not yet enabled,
# so a freshly-plugged TV shows up here even before Hyprland mirrors to it.
hyprctl monitors all | grep -E '^Monitor|^\s+(description|availableModes):' || hyprctl monitors all
rule
echo
echo "Look for the HDMI entry above — the name is the word after 'Monitor',"
echo "e.g.  Monitor HDMI-A-1 (ID 1): ...   ->  the name is  HDMI-A-1"
echo

# ---------------------------------------------------------------------------
# 2. Pause
# ---------------------------------------------------------------------------
read -r -p "Press Enter once you've found the HDMI output name... " _

# ---------------------------------------------------------------------------
# 3. Ask for the values
# ---------------------------------------------------------------------------
echo
read -r -p "Paste the HDMI output name (e.g. HDMI-A-1): " OUTPUT
OUTPUT="${OUTPUT//[[:space:]]/}"
if [[ -z "$OUTPUT" ]]; then
  echo "error: no output name given." >&2
  exit 1
fi

echo
bold "About to run:"
echo "  output    = $OUTPUT"
echo "  workspace = $WS  (your SUPER+0 key)"
read -r -p "Proceed? [y/N] " CONFIRM
case "$CONFIRM" in
  [yY]|[yY][eE][sS]) ;;
  *) echo "Aborted — nothing changed."; exit 0 ;;
esac

# ---------------------------------------------------------------------------
# 4. Apply
# ---------------------------------------------------------------------------
echo
bold "Enabling output $OUTPUT..."
hyprctl keyword monitor "$OUTPUT, preferred, auto, 1"

bold "Binding workspace $WS to $OUTPUT and moving it over..."
hyprctl keyword workspace "$WS, monitor:$OUTPUT, default:true"
hyprctl dispatch moveworkspacetomonitor "$WS" "$OUTPUT"

echo
rule
bold "Done."
echo "Workspace $WS is now on $OUTPUT (your TV)."
echo "Press SUPER+0 to switch to it and put the deck on the big screen."
echo
echo "To revert everything:   hyprctl reload     (or just unplug the TV)"
rule
