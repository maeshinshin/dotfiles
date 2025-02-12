# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

## ssh-agent
if pidof ssh-agent > /dev/null ;then
	export SSH_AGENT_PID=$(pidof ssh-agent)
	export SSH_AUTH_SOCK=$(find /tmp/ssh-* -iname agent.*)
else
	eval "$(ssh-agent -s)" &> /dev/null
fi

## configureation about kuberntes tools
