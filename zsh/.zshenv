# Zsh configuration file to specify the environment variables
# Written by raomito

# ============================================================================
# Environment Variable

# 重複したパスを登録しない
typeset -U PATH

export EDITOR=vim
export LANG=ja_JP.UTF-8
export PAGER=w3m
export PATH="$HOME/app/bin:$HOME/bin:$HOME/.rbenv/shims:$HOME/.homebrew/bin:$HOME/.npm:$PATH"
export SHELL=/bin/zsh

# TUI表示の修正
export WCWIDTH_CJK_LEGACY=yes

