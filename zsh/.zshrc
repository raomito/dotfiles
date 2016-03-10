# Zsh configuration file to specify the options
# Written by raomito

# ============================================================================
# Basic

# ディレクトリ名のみで移動を行う
setopt auto_cd

# カレントディレクトリの情報が保存される
setopt auto_pushd

# 重複したディレクトリ情報は保存しない
setopt pushd_ignore_dups

# コマンドの自動修正
setopt correct

# 補完時に大文字小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Vimライクキーバインド
bindkey -v

# ターミナルロック無効化
stty stop undef

# サスペンド無効化
stty susp undef

# ============================================================================
# History

# コマンド履歴の保存先
HISTFILE="$HOME/.zsh_history"

# メモリに展開する履歴の件数
HISTSIZE=10000

# 保存する履歴の件数
SAVEHIST=10000

# 重複した履歴は保存しない
setopt hist_ignore_dups

# 先頭にスペースを入れると履歴に残さない
setopt hist_ignore_space

# コマンド履歴の有効化
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

# ============================================================================
# Complement

# ディレクトリ移動履歴の有効化
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

# ディレクトリ移動履歴の保存数
zstyle ':chpwd:*' recent-dirs-max 100

# ディレクトリ移動履歴の保存先
zstyle ':chpwd:*' recent-dirs-file "$HOME/.chpwd_history"

# ホームディレクトリを項目から除外
zstyle ':chpwd:*' recent-dirs-prune parent

# 補完機能の有効化
autoload -Uz compinit
compinit

# コマンド履歴から補完
bindkey '^p' history-beginning-search-backward-end
bindkey '^n' history-beginning-search-forward-end

# コマンド補完を強化
if [ "$(uname)" = "Darwin" ]; then
  fpath=($HOME/.homebrew/share/zsh-completions $fpath)
fi

# ============================================================================
# Aliases

if [ "$(uname)" = "Darwin" ]; then
  alias ls='ls -G'
else
  alias ls='ls --show-control-chars --color=auto'
fi

alias t='tmux start \; source-file ~/.tmux/$(ls -A1 ~/.tmux | peco)'
alias j='cd $(cdr -l | sed "s/^[0-9]* *//" | peco | xargs -Ipath zsh -c "echo path")'
alias l='ls -CF'
alias la='ls -a'
alias ll='ls -l'
alias lp='ls -al | peco'
alias rm='rm -i'
alias sudo='sudo env PATH=$PATH'

# ============================================================================
# Prompt

# カラー表示の有効化
autoload -Uz colors
colors

# PROMPT内で変数参照を行う
setopt prompt_subst

PROMPT='$(prompt)'
PROMPT2=%F{56}'> '%F{none}

# ============================================================================
# Window Title

if [ "$TERM" = "screen-256color" ] || [ "$TERM" = "xterm-256color" ]; then
  precmd() { echo -n "\e]0;${USER}@${HOST%%.*}:${PWD/#$HOME/~}\a" }
fi

# ============================================================================
# Tmux

# ============================================================================
# Ruby

if [ -d "$HOME/.rbenv" ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# ============================================================================
# PHP

if [ -d "$HOME/.phpenv" ]; then
  export PATH="$HOME/.phpenv/bin:$PATH"
  eval "$(phpenv init -)"
fi

