#!/bin/zsh

function has_message() {
  if [ $# -eq 0]; then
    echo -e "${BACK_RED}${TEXT_WHITE}${TEXT_BOLD} [E]Error: Logger needs a message to be printed ${STYLE_TERMINATOR}\n"

    return false
  fi

  return true
}

function print_error() {
  if [ has_message ]; then
    echo -e "${BACK_RED}${TEXT_WHITE}${TEXT_BOLD} [E] Error: ${1} ${STYLE_TERMINATOR}\n"
  fi
}

function print_warning() {
  if [ has_message ]; then
    echo -e "${BACK_YELLOW}${TEXT_LIGHT_RED}${TEXT_BOLD} [W] Warning: ${1} ${STYLE_TERMINATOR}\n"
  fi
}

function print_debug() {
  if [[ has_message && ${DEBUG_SCRIPT} = true ]]; then
    echo -e "${BACK_LIGHT_MAGENTA}${TEXT_WHITE}${TEXT_BOLD} [D] Debug: ${1} ${STYLE_TERMINATOR}\n"
  fi
}

function print_info() {
  if [ has_message ]; then
    echo -e "${BACK_BLUE}${TEXT_WHITE}${TEXT_BOLD} [I] Info: ${1} ${STYLE_TERMINATOR}\n"
  fi
}

function print_success() {
  if [ has_message ] ; then
    echo -e "${BACK_GREEN}${TEXT_WHITE}${TEXT_BOLD} [S] Success: ${1} ${STYLE_TERMINATOR}\n"
  fi
}
