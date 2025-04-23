function ansi.constants() {
# ANSI Color Codes

# Foreground Colors
export BLACK_FG=$'\e[30m'
export RED_FG=$'\e[31m'
export GREEN_FG=$'\e[32m'
export YELLOW_FG=$'\e[33m'
export BLUE_FG=$'\e[34m'
export MAGENTA_FG=$'\e[35m'
export CYAN_FG=$'\e[36m'
export WHITE_FG=$'\e[37m'
export DEFAULT_FG=$'\e[39m' # Resets to default

# Bright Foreground Colors
export BRIGHT_BLACK_FG=$'\e[90m'
export BRIGHT_RED_FG=$'\e[91m'
export BRIGHT_GREEN_FG=$'\e[92m'
export BRIGHT_YELLOW_FG=$'\e[93m'
export BRIGHT_BLUE_FG=$'\e[94m'
export BRIGHT_MAGENTA_FG=$'\e[95m'
export BRIGHT_CYAN_FG=$'\e[96m'
export BRIGHT_WHITE_FG=$'\e[97m'

# Background Colors
export BLACK_BG=$'\e[40m'
export RED_BG=$'\e[41m'
export GREEN_BG=$'\e[42m'
export YELLOW_BG=$'\e[43m'
export BLUE_BG=$'\e[44m'
export MAGENTA_BG=$'\e[45m'
export CYAN_BG=$'\e[46m'
export WHITE_BG=$'\e[47m'
export DEFAULT_BG=$'\e[49m' # Resets to default

# Bright Background Colors
export BRIGHT_BLACK_BG=$'\e[100m'
export BRIGHT_RED_BG=$'\e[101m'
export BRIGHT_GREEN_BG=$'\e[102m'
export BRIGHT_YELLOW_BG=$'\e[103m'
export BRIGHT_BLUE_BG=$'\e[104m'
export BRIGHT_MAGENTA_BG=$'\e[105m'
export BRIGHT_CYAN_BG=$'\e[106m'
export BRIGHT_WHITE_BG=$'\e[107m'

# Text Effects
export RESET=$'\e[0m'    # Reset all styles
export BOLD=$'\e[1m'     # Bold/Bright
export DIM=$'\e[2m'      # Dim
export ITALIC=$'\e[3m'   # Italic
export UNDERLINE=$'\e[4m'# Underline
export BLINK=$'\e[5m'     # Blink
export RAPID_BLINK=$'\e[6m' # Rapid Blink
export REVERSE=$'\e[7m'   # Reverse video (swap foreground and background)
export HIDDEN=$'\e[8m'    # Hidden
export STRIKETHROUGH=$'\e[9m' # Strikethrough

# Example usage (within a script):
# echo -e "${RED_FG}This is red text${RESET} and this is normal."
# echo -e "${GREEN_FG}${BOLD}This is bold green text${RESET}"
# echo -e "${BLUE_BG}${WHITE_FG}Blue background with white text${RESET}"
# echo -e "${YELLOW_FG}${UNDERLINE}Yellow underlined text${RESET}"
# printf "${MAGENTA_FG}Magenta text, no newline"
# printf "  ${CYAN_BG}${BLACK_FG}on cyan background${RESET}\n"

# Note:  The $'' quoting allows the escape sequences to be interpreted.
#        Using "" would require double escapes (e.g., \\e).

}
