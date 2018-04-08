# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

# User specific environment and startup programs

PATH=$PATH:/opt/bin:$HOME/.local/bin:$HOME/go/bin:$HOME/.gem/bin:$HOME/.config/composer/vendor/bin

export PATH
