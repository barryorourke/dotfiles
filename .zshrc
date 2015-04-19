source ~/repositories/dotfiles/antigen/antigen.zsh

# use oh-my-zsh
antigen use oh-my-zsh

# use my theme
antigen theme ~/repositories/dotfiles/oh-my-zsh/themes barryorourke --no-local-clone

# apply some oh-my-zsh bundles
antigen bundle extract
antigen bundle git
antigen bundle history-substring-search
antigen bundle vi-mode

# apply some other bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
# apply the changes
antigen apply

# restore ^r whilst in vi mode, I can't train my brain out of it
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

# start ssh-agent
eval $(ssh-agent) > /dev/null

# create default directory structure if it doesn't exist
for D in files/{documents,music,pictures,videos} tmp/{desktop,downloads}
do
  [ ! -d ~/${D} ] && mkdir -p ~/${D}
done

# aliases
alias tmux="tmux -2"
