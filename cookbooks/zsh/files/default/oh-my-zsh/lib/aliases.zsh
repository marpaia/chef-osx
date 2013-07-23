# List direcory contents
alias l='ls'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -lAh'
alias lal='ls -lAh'
alias sl=ls

# Applications
alias chrome="open /Applications/Google\ Chrome.app/"
alias twitter="open /Applications/Tweetbot.app/"
alias firefox="open /Applications/Firefox.app/"
alias mail="open /Applications/Mail.app/"
alias cal="open /Applications/iCal.app/"
alias ical="open /Applications/iCal.app/"
alias lock="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"
alias burp="nohup java -jar -Xmx1g ~/Tools/burp.jar > /dev/null&"
alias w="weechat-curses"
alias weechat="weechat-curses"

# Commands
alias cls="clear"
alias mak="make"

# Python
alias pythong="python"
alias pytho="python"
alias p="ipython"
alias i="ipython"
alias ip="ipython"

# Finder
alias showall="defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder"
alias hideall="defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder"

# Work
DEV="~/development"
WEB="$DEV/Etsyweb"
alias try="try -P"
alias ew="cd $WEB; ls"
alias web="cd $WEB; ls"
alias cde="cd $WEB; ls"
alias cdp="cd $WEB/phplib; ls"
alias phplib="cd $WEB/phplib; ls"
alias pl="cd $WEB/phplib; ls"
alias ec="cd $WEB/phplib/EtsyConfig; ls"
alias htd="cd $WEB/htdocs; ls"
alias tem="cd $WEB/templates; ls"
alias temp="cd $WEB/templates; ls"
alias ast="cd $WEB/htdocs/assets; ls"
alias css="cd $WEB/htdocs/assets/css; ls"
alias js="cd $WEB/htdocs/assets/js; ls"
alias dt="cd $DEV/DevTools/; ls"
alias dep="cd $DEV/Deployinator/; ls"
alias cds="cd $DEV/security/; ls"
alias dev="cd $DEV; ls"
alias cdc="cd $DEV/chef; ls"
alias chef="cd $DEV/chef; ls"
alias gistdiff="git diff origin|gist -t diff"
alias s="ssh vm"
alias vm="ssh vm"
alias sec="ssh sec"
alias sec01="ssh sec01"
alias sec03="ssh sec03"

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'
alias chef="cd ~/github/chef-osx/"

# Super user
alias _='sudo'
alias please='sudo'

# Show history
alias history='fc -l 1'
