alias gs='git status'
alias gc='git commit --verbose'
alias gpu='git push'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gd='git diff'
alias ga='git add'
alias gco='git checkout'
alias gm='git merge --no-edit'

alias trcleangit='git checkout .; git pull; git submodule init && git submodule sync && git submodule update; ./composer.phar update; ./cake Migrations.migration run all'

alias gr='grep -inr'

alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agu='sudo apt-get update'
alias agg='sudo apt-get upgrade'
alias agdg='sudo apt-get dist-upgrade'
alias agar='sudo apt-get autoremove'
alias agac='sudo apt-get autoclean'
alias acs='sudo apt-cache search'

alias lsl='ls -lhFA | less'
alias ..='cd ..'
alias mkdir="mkdir -pv"
alias webify="mogrify -resize 800\> *.jpg"
alias trtime='date +%r\ \|\|\ %a-%h-%m-%d-%Y'
alias 1='cd ../'
alias 2='cd ../../'
alias 3='cd ../../../'
alias _=sudo

alias exmon='xrandr --output DP2 --mode 1920x1080; sleep 2; xrandr --output eDP1 --off'
alias lapmon='xrandr --output eDP1 --mode 1920x1080; sleep 2; xrandr --output DP2 --off'

alias sublime='~/bin/sublime/sublime_text'

running() {
    ps -Alf | grep -v grep | grep $1
}

vmstart() {
	VBoxManage startvm $1 --type headless
}

vmstop() {
	VBoxManage controlvm $1 acpipowerbutton
}

trsleepy() {
	sudo date;
	xscreensaver-command -l;
	sudo pm-suspend;
}

grr() {
	grep -inr "$1" Model;
	grep -inr "$1" View;
	grep -inr "$1" Controller;
}

alias slowcurl='curl --limit-rate 200k'
