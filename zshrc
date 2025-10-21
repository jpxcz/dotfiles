export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="arrow"
plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Docker Aliases and Commands
alias dkn="docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"
alias dkl="docker logs -f -n 10"
alias dkcd="docker-compose -f docker-compose.dev.yaml up -d"
alias dkc="docker-compose -f docker-compose.yaml up -d"
alias dkcm="docker-compose -f docker-compose.mac.yaml up -d"
alias dkcmb="docker-compose -f docker-compose.mac.yaml build --build-arg NPM_TOKEN=$NPM_TOKEN"
alias dkprune="/opt/docker_prune.sh"
dks() { docker stop $(docker ps -a -q); }

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/bin
alias k=kubectl
compdef __start_kubectl k
[[ /opt/homebrew/bin/kubectl ]] && source <(kubectl completion zsh)

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export GO_PATH=~/go
export PATH=$PATH:/$GO_PATH/bin
export PATH=$HOME/.local/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"

# SQL Term
alias sqlterm="$HOME/code/sqlterm/sqlterm"

# Directory Fuzzy Finder
work_directory() {
    cd $(find ~/edgewater ~/code ~/TableSwift/code ~/work -mindepth 1 -maxdepth 2 -type d | fzf)
}
zle -N work_directory
bindkey -s '^f' work_directory 


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jp/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jp/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jp/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jp/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
