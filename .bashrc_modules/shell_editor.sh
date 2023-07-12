# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 2 -*-
# vim:set expandtab tabstop=2 fenc=utf-8 fileformat=unix filetype=sh:

# Set editor for interactive Bash command editing via Ctrl-X-E
# Source: https://unix.stackexchange.com/a/302391

# Prefer vim or else fail over to vi
EDITOR="$(command -v vim 2>/dev/null || command -v vi)"

# we have gvim, not in an SSH term, and the X11 display number is under 10
if command -v gvim >/dev/null 2>&1 && [ "$SSH_TTY$DISPLAY" = "${DISPLAY#*:[1-9][0-9]}" ]; then
  export VISUAL="$(command -v gvim) -f"
  SUDO_EDITOR="$VISUAL"
else
  SUDO_EDITOR="$EDITOR"
fi