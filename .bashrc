alias ll="ls -lahL"
alias con="tail -40 -f /var/log/system.log"
alias ..="cd .."
alias cd..="cd .."
alias xc="open -a Xcode ."
alias sb="source .bashrc"

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

export CLICOLOR=1

export PATH=/Library/Frameworks/Python.framework/Versions/3.6/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin/mysql/bin:$PATH
export PATH=~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools:$PATH
export PATH="$HOME/.fastlane/bin:$PATH"

export XCODE="`xcode-select --print-path`"
eval "$(rbenv init -)"

source ~/.bash/config.bash

# added by travis gem
[ -f /Users/chris/.travis/travis.sh ] && source /Users/chris/.travis/travis.sh
