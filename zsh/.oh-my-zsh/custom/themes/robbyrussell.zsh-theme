local ret_status="%(?:%{$fg_bold[green]%}>:%{$fg_bold[red]%}>)"
local user_host="%{$fg_bold[green]%}%n%{$fg_bold[white]%}@%{$fg_bold[green]%}%m%{$reset_color%}:"
PROMPT='${user_host}$(git_prompt_info)%{$fg[cyan]%}%~${ret_status} %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%} %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
