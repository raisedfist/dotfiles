# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000

# Paths & pager
path+=('/home/radu/.local/bin')
PAGER='most'
export PATH PAGER

# Key timeout for vim mode (ESC)
export KEYTIMEOUT=1

# TERM
export TERM=xterm-256color

[ -n "$TMUX" ] && export TERM=screen-256color

# Change window title
case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;%m [%~]\a"}
        ;;
esac

# Functie pentru conn
conn() {
    conn.py $1
}

bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/radu/.zshrc'

autoload -Uz compinit
compinit
# Completion for conn - Radu Adam
compdef '_path_files -W /home/radu/.config/conn/' conn
# End of lines added by compinstall

# Prompt settings
autoload -Uz promptinit
promptinit
prompt adam1

# Jobs settings
setopt NO_HUP
setopt NO_CHECK_JOBS

# My Aliases
alias ls='ls --color=auto -N'
alias ll='ls --color=auto -lN'
alias sasgui='SWT_GTK3=0 sasgui'

# Start ssh-agent
#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
