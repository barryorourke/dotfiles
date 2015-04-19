# barryorourke theme

# prompt
MODE_INDICATOR="%{$fg_bold[red]%}<%{$fg[red]%}<<%{$reset_color%} "
PROMPT='$(vi_mode_prompt_info)[%n@%m %c]%# '
RPROMPT='$(git_prompt_info)'

# git prompt
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
