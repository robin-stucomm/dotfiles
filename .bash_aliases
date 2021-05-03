alias ls="ls --color"

alias ll="ls -lh --color"
alias ls="ls -G --color"
alias la="ls -G -al --color"
alias lg="ls -G -al --color | grep --color=always $@"
alias myip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias cip="curl 'https://api.ipify.org?format=json'"

alias code="cd $HOME/Documents/code && ll"
alias work="cd $HOME/Documents/work && ll"
alias fwork="cd $HOME/Documents/work/FunctionalTesting && ll"

alias vbash="vim ~/.bashrc"
alias reload="source ~/.bashrc"
alias copy="xclip -sel c < $1"
alias 1="echo -n \"één\" | xclip -sel c"
alias keeper="copy ~/Documents/keys/keeper.txt"

alias gs="git status"
alias gc="git checkout"
alias gb="git branch"
alias gr="git reset"
alias gp="git push"
alias ga="git add -v"
alias commit="git commit"
alias diff="git diff"
alias dif="diff"
alias fuck="git reset --hard origin/HEAD"
alias log-id='git log | awk '\''{print substr($0,8,7);exit}'\'''

alias headless="npm run test -- --browsers ChromeHeadlessNoSandbox --source-map=true --watch=false"

alias filepath="readlink -f $1"

alias default-zoom="set-zoom 1.3"

alias rebootw="sudo grub-reboot 1 && sudo reboot"

alias removecache="rm -rf $HOME/.gradle/caches/"

remove() {
    sudo apt purge $1
    sudo apt autoremove
}

nuke_port() {
    if [ $# -eq 0 ]; then
        echo "No arguments provided"
        echo "provide port of service you wish to kill"
        exit 1
    fi

    port=$(sudo lsof -t -i :$1 -s TCP:LISTEN)
    sudo kill -9 $port
}

function create-feature() {
    git checkout -b feature/$1
    git push --no-verify -u origin feature/$1
}

function update() {
    git checkout $1
    git pull
}

function set-zoom() { 
    gsettings set org.gnome.desktop.interface text-scaling-factor "$@"; 
}

function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}
