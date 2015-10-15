alias gs='git status'
alias gc='git commit --verbose'
alias gpu='git push'
alias gpr='git pull --rebase'
alias gd='git diff'
alias ga='git add'
alias gco='git checkout'

alias bellme="while true; do printf '\a'; sleep 1; done"
alias gr='grep -inr'

alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agu='sudo apt-get update'
alias agg='sudo apt-get upgrade'
alias agdg='sudo apt-get dist-upgrade'
alias agar='sudo apt-get autoremove'

alias lsl='ls -lhFA | less'
alias cd..='cd ..'
alias ..='cd ..'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias mkdir="mkdir -pv"
alias myip="curl http://ipecho.net/plain; echo"
alias webify="mogrify -resize 800\> *.jpg"

alias trmail='cd; mutt -F ~/.muttconfs/trtreddell; cd -;'
alias ahmmail='cd; mutt -F ~/.muttconfs/ahm; cd -;'
alias psmail='cd; mutt -F ~/.muttconfs/ps; cd -;'

alias exmon='xrandr --output DP2 --mode 1920x1080; sleep 2; xrandr --output eDP1 --off'
alias lapmon='xrandr --output eDP1 --mode 1920x1080; sleep 2; xrandr --output DP2 --off'

alias trash='gvfs-trash'

running() {
    ps -Alf | grep -v grep | grep $1
}

trstartvm() {
	VBoxManage startvm $1 --type headless
}

trsleepy() {
	sudo date;
	xscreensaver-command -l;
	sudo pm-suspend;
}

