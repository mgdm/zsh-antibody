ANTIBODY_HOME=$HOME/.zsh-antibody
setopt PROMPT_SUBST
source <(antibody init)
antibody bundle < $ANTIBODY_HOME/plugins.txt
source $ANTIBODY_HOME/functions.zsh

export PATH=$HOME/bin:$PATH
export EDITOR=vim

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'


if [ -d $HOME/.rbenv ]; then
	eval "$(rbenv init - --no-rehash)"
fi

if [ -d $HOME/.nvm ]; then
    export NVM_DIR="$HOME/.nvm"
    . "$(brew --prefix nvm)/nvm.sh" --no-use
    alias node='unalias node ; unalias npm ; nvm use default ; node $@'
    alias npm='unalias node ; unalias npm ; nvm use default ; npm $@'
fi

if [ -d $HOME/.phpbrew ]; then
	source $HOME/.phpbrew/bashrc
fi

if [ -f $HOME/.localrc ]; then
	source $HOME/.localrc
fi

