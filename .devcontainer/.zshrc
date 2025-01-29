export PATH=/home/kim/.local/bin:$PATH
alias nr='npm run'
alias br='bun run'
alias brew-audit='brew leaves --installed-on-request | xargs -1 brew desc --eval-all'
alias ipsum='curl loripsum.net/api/3/plaintext'
alias to-records='cd /Users/kimtho/Desktop/Working'
alias git-nope='git reset --hard'
alias git-branch='git branch --show-current | cat'
alias git-set='git push --set-upstream origin $(git-branch)'
alias git-stash-unstaged='git commit -m "WIP" --no-verify && git stash -u && git reset --soft HEAD^'
alias git-stash-staged='git stash --staged'
alias git-morning='git stash push -m "morningd too hard" && git fetch origin && git checkout develop && git pull && git stash pop'
alias tmuxn='tmux new -s '
alias tmuxa='tmux attach -t '
alias tmuxk='tmux kill-session -t '
alias tmuxd='tmux detach '
alias derived='open ~/Library/Developer/Xcode/DerivedData'
alias profiles='rm -rf ~/Library/MobileDevice/Provisioning\ Profiles/{*,.*}'
alias lsa='ls -al'
alias be='bundle exec '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

convertToMp4() {
  ffmpeg -i "$1" -c:v libx264 -c:a aac -strict experimental -b:a 192k "$2"
}

# fun terminal colors
export RED='\033[0;31m'
export BOLDRED='\033[0;31m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export GRAY='\033[0;37m'
export YELLOW='\033[0;33m'
export NORM='\033[0m' # No Color

# Silence some annoying Starship warnings in larger repos
export STARSHIP_LOG='error'

# eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
