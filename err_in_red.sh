#! /usr/bin/env bash
# For zsh, amend accordingly
# put this in your .whatever_rc

# taken from serverfault.com/a/502019/
# thanks to a comment from serverfault.com/u/176704/
color() (set -o pipefail; "$@" 2> >(sed $'s,.*,\e[31m&\e[m,' >&2))

