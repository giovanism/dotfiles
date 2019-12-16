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

export EDITOR=nvim
export GOPATH=$HOME/.go
export GEM_HOME=$HOME/.gem
export PATH=$PATH:/opt/bin:$HOME/.local/bin:$HOME/bin:$HOME/.go/bin:$HOME/.gem/bin:$HOME/.config/composer/vendor/bin:$HOME/.perl5/perlbrew/bin:$HOME/.npm-global/bin:$HOME/.cargo/bin:$HOME/.yarn/bin:$HOME/.cargo/bin
