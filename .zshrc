# Language
export LANG=ja_JP.UTF-8

# Exports
export PATH=$PATH:/usr/local/bin

# PostgreSQL
export PATH=$PATH:/Library/PostgreSQL/9.1/bin

# LLVM
export PATH=$PATH:/usr/local/opt/llvm/bin

# rbenv
eval "$(rbenv init -)"

export LSCOLORS=exfxcxdxbxegedabagacad
alias ls="ls -G"

# MacVim
alias gvim="/Applications/MacVim.app/Contents/MacOS/Vim -g"
function vim() {
	if [ $# = 0 ]; then
		gvim
	else
		gvim --remote-tab-silent $@
	fi
}

export EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim -g --remote-tab-wait-silent"

# Compinit
autoload -U compinit
compinit

zstyle ':completion:*' list-colors ''

# Prompt Colours
PROMPT="%{[31m%}%/%%%{[m%} "
PROMPT2="%{[31m%}%_%%%{[m%} "
SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
	PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history

# Setopts
setopt auto_cd
setopt auto_pushd
setopt list_packed

# Avoiding Javac Mojibake
alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'

# Golang
export GOPATH=~/Dropbox/Programming/go
export PATH=$PATH:~/Dropbox/Programming/go/bin
