# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
echo -ne "\033]2;${USER}@${HOSTNAME}\007"
