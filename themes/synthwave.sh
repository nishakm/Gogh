#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#5A085A"           # Black
export COLOR_02="#F48A32"           # Red
export COLOR_03="#F23997"           # Green
export COLOR_04="#FEFF71"           # Yellow
export COLOR_05="#00FEFC"           # Blue
export COLOR_06="#958CFF"           # Magenta
export COLOR_07="#12D2FF"           # Cyan
export COLOR_08="#ffffff"           # Light gray

export COLOR_09="#5A085A"           # Dark gray
export COLOR_10="#F48A32"           # Light Red
export COLOR_11="#F23997"           # Light Green
export COLOR_12="#FEFF71"           # Light Yellow
export COLOR_13="#00FEFC"           # Light Blue
export COLOR_14="#958CFF"           # Light Magenta
export COLOR_15="#12D2FF"           # Light Cyan
export COLOR_16="#ffffff"           # White

export BACKGROUND_COLOR="#32253C"   # Background Color
export FOREGROUND_COLOR="#E58F48"   # Foreground Color (text)
export CURSOR_COLOR="#97D9F1" # Cursor color
export PROFILE_NAME="SynthWave"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Gogh-Co/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi
