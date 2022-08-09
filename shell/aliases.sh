alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -l"
alias la="ls -la"

#Docker
alias dkps="docker ps"
alias dkstr="$DOTLY_PATH/bin/dot docker start"
alias dkstp="$DOTLY_PATH/bin/dot docker stop"
alias dkconn="$DOTLY_PATH/bin/dot docker connect"
alias dkst="docker stats"
alias dkpsa="docker ps -a"
alias dkimgs="docker images"
alias dkcpup="docker-compose up -d"
alias dkcpdown="docker-compose down"
alias dkcpstart="docker-compose start"
alias dkcpstop="docker-compose stop"

# Git
alias gaa="git add -A"
alias gc='$DOTLY_PATH/bin/dot git commit'
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='$DOTLY_PATH/bin/dot git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl='$DOTLY_PATH/bin/dot git pretty-log'

#Maven
alias mci="mvn clean install"
alias mcist="mvn clean install -DskipTests"
alias mfc="mvn git-code-format:format-code"

#System
alias fuck="sudo !!"

#File
alias count="wc -l"

# Utils
alias up='dot package update_all'