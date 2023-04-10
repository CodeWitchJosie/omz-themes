function symbol {
  echo -n ''
}
function directory {
  if [[ $PWD != $HOME ]];
  then 
    echo -n '/'
  fi
  echo -n '%1~'
}
function prompt {
  echo -n '%(!.#.$)'
}
function safe_virtualenv {
  declare -F virtualenv_prompt_info && virtualenv_prompt_info
}
for COLOR in RED MAGENTA YELLOW GREEN BLUE CYAN GREY WHITE BLACK DEFAULT; do
  declare -g FG_$COLOR="%b%{$fg[${(L)COLOR}]%}"
  declare -g FG_BOLD_$COLOR="%B%{$fg[${(L)COLOR}]%}"
  declare -g BG_$COLOR="%b%{$bg[${(L)COLOR}]%}"
  declare -g BG_BOLD_$COLOR="%B%{$bg[${(L)COLOR}]%}"
done
RESET_COLORS="%{$reset_color%}"

VCS_FORMAT_COLOR="${FG_MAGENTA}"
########## GIT ###########
ZSH_THEME_GIT_PROMPT_PREFIX="${VCS_FORMAT_COLOR}[${FG_GREEN}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${VCS_FORMAT_COLOR}] ${RESET_COLORS}"
ZSH_THEME_GIT_PROMPT_DIRTY="${FG_BOLD_RED} ✘"
ZSH_THEME_GIT_PROMPT_CLEAN="${FG_BOLD_GREEN} ✔"
ZSH_THEME_GIT_PROMPT_ADDED="${FG_BOLD_YELLOW} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="${FG_BOLD_YELLOW} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="${FG_BOLD_YELLOW} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="${FG_BOLD_YELLOW} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="${FG_BOLD_YELLOW} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="${FG_BOLD_YELLOW} ?"

########## VIRTUALENV ###########
ZSH_THEME_VIRTUALENV_PREFIX="${FG_MAGENTA}[${FG_CYAN}"
ZSH_THEME_VIRTUALENV_SUFFIX="]${RESET_COLORS}"

setopt prompt_subst
PROMPT='${FG_MAGENTA}$(symbol) $(git_prompt_info)${FG_BLUE}$(directory)$(git_prompt_status) ${FG_MAGENTA}$(prompt) ${RESET_COLORS}'
RPROMPT='$(virtualenv_prompt_info)'