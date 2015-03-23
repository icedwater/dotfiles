#! /usr/bin/env bash
#

# This seems bugged; how do I avoid stacking branch names?
# Simplified from http://petdance.com/2013/04/my-bash-prompt-with-gitsvn-branchstatus-display/

function git_prompt {
    local dirty
    local branch
    local green
    local red
    local reset

    green="\[\033[0;32m\]"
    red="\[\033[0;31m\]"
    reset="\[\033[0m\]"

    if git status -uno -s | grep -q . ; then
        dirty=1
    fi

    branch=$(git branch | sed -ne 's/* //p') # why is this better than grep|sed?
    
    if [[ -n "$branch" ]]; then
        local status_color
        if [[ -z "$dirty" ]]; then
            status_color=$green
        else
            status_color=$red
        fi
        PS1="$status_color($branch)$reset $PS1"
    fi
}

if [[ -z "$PROMPT_COMMAND" ]]; then
    PROMPT_COMMAND=git_prompt
else
    if echo $PROMPT_COMMAND | grep -q git_prompt; then
        PROMPT_COMMAND="$PROMPT_COMMAND ; git_prompt"
    fi
fi
