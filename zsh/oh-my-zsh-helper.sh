#!/bin/zsh

# With several oh-my-zsh themes, the 'dirty' prompt decoration causes a 1-2s lag
# This function preempts that decoration so prompt load times are fast
function git_prompt_info() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
      echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}
