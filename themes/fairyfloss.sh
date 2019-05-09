#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#5A5475"           # HOST
export COLOR_02="#A8757B"           # SYNTAX_STRING
export COLOR_03="#716799"           # COMMAND
export COLOR_04="#E6C000"           # COMMAND_COLOR2
export COLOR_05="#FF857F"           # PATH
export COLOR_06="#AE81FF"           # SYNTAX_VAR
export COLOR_07="#C2FFDF"           # PROMP
export COLOR_08="#F8F8F2"           #

export COLOR_09="#75507B"           #
export COLOR_10="#FFB8D1"           # COMMAND_ERROR
export COLOR_11="#8077A8"           # EXEC
export COLOR_12="#FFEA00"           #
export COLOR_13="#F92672"           # FOLDER
export COLOR_14="#C5A3FF"           #
export COLOR_15="#FFF352"           #
export COLOR_16="#F8F8F0"           #

export BACKGROUND_COLOR="#5A5475"   # Background Color
export FOREGROUND_COLOR="#C2FFDF"   # Text
export BOLD_COLOR="#E6C000"         # Bold
export CURSOR_COLOR="#FFB8D1" # Cursor
export PROFILE_NAME="Fairyfloss"
# =============================================================== #






# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/nishakm/Gogh/master"}


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
