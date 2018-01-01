###############################################################################
# Cheatsheet of aliases from loaded modules
###############################################################################
# cdf = cd to folder shown in Finder
# mkd = mkdir and cd to it
# cdl = cd to dir and ls -la
# d = lists dir previously cd'd to

###############################################################################
# Suffix Aliases
###############################################################################
alias -s js=code
alias -s txt=code
alias -s json=code
alias -s sh=code
alias -s html=code
alias -s mdown=code
alias -s log=code
alias -s hbs=code


###############################################################################
# Prezto
###############################################################################
alias src="source ~/.zshrc"
alias ealias="code ~/.zim/modules/custom/alias.zsh"
alias ep="code ~/.zim"
alias zim="cd ~/.zim"

###############################################################################
# (Gaikai Specific)
###############################################################################

# Open Google Chrome with Web Security Disabled
alias chr="open /Applications/Google\ Chrome.app --args --disable-web-security"
alias chr2="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --user-data-dir=/Users/alex/Library/Application\ Support/Google/Chrome/Apollo --disable-web-security --allow-file-access-from-files > /dev/null 2>&1 &"
alias canary="open /Applications/Google\ Chrome\ Canary.app --args --disable-web-security"
alias sf="cd ~/Sites/swordfish"
alias sfgk="cd ~/Sites/swordfish/js/lib/gaikai"
alias gk="cd ~/Sites/gaikai.com"
# Mount/unmount specific VM folder
alias mountvm="mkdir /Volumes/GitHub && mount_smbfs //alex@aheyd-pc/GitHub /Volumes/GitHub && code /Volumes/GitHub"
alias umountvm="umount -f /Volumes/GitHub"
# Update node_modules and bower_components
alias ugh="sudo rm -rf node_modules bower_components dist tmp && bower cache clean && npm cache clean && npm i && bower i"
alias gprd="gco develop && gpl && gco - && git pull --rebase origin develop"
alias olang="code public/assets/i18n/en-us.json"

###############################################################################
# Atom
###############################################################################
alias ai="apm install"
alias aui="apm uninstall"
alias ab="code"

###############################################################################
# Utilities
###############################################################################

alias -- -='cd -'
alias extract="unarchive"
alias cdusb="cd /Volumes/ADATA\ UFD && l"
alias lplogin="/usr/local/bin/lpass login"
# dotjs-universal export/import
dotjsPath="~/Library/Application\ Support/Google/Chrome/Default/Extensions/mnnjfadhifkmdoalniglnmmpjggnfbam/1.6.1_0"
alias edotjs="yes | cp -r $dotjsPath/scripts ~/Dropbox/sync/dotjs/ && yes | cp -r $dotjsPath/styles ~/Dropbox/sync/dotjs/"
alias idotjs="yes | cp -r ~/Dropbox/sync/dotjs/scripts $dotjsPath && yes | cp -r ~/Dropbox/sync/dotjs/styles $dotjsPath"
alias maxfiles="ulimit -n 1024"
alias flix="peerflix --vlc"
alias cast="peercast"
alias copyrsa="pbcopy < ~/.ssh/id_rsa.pub"
###############################################################################
# Apache
###############################################################################

alias restart_apache="sudo apachectl restart"
alias start_apache="sudo apachectl start"
alias stop_apache="sudo apachectl stop"
alias ehosts="code /etc/hosts"
alias evhosts="code /private/etc/apache2/extra/httpd-vhosts.conf"
alias eapache="code /etc/apache2/httpd.conf"

###############################################################################
# System
###############################################################################

alias update_os="sudo sh -c \"softwareupdate -ia && reboot\""
alias serve="python -m SimpleHTTPServer"
alias rmdir="rm -rf"
alias o="open"
alias oo="open ."
alias etrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias clr="clear"
alias l="ls -la"
alias ld="ls -lad"
# Toggle hidden files
alias showhidden="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"
# Toggle desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
# `cat` with beautiful colors. requires Pygments (sudo easy_install Pygments)
alias c="pygmentize -O style=twilight -f console256 -g"
# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"
# Flush Directory Service cache
alias flush="dscacheutil -flushcache"
# Trim new lines and copy to clipboard
alias trimcopy="tr -d '\n' | pbcopy"
# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"
# File size
alias fs="stat -f \"%z bytes\""
# PlistBuddy alias, because sometimes `defaults` just doesn’t cut it
alias plistbuddy="/usr/libexec/PlistBuddy"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

###############################################################################
# Git
###############################################################################

# alias g="git"
alias gl="git log --color --graph --pretty=format:'%Cred%h %Cgreen(%cr) %Cblue<%an>%C(yellow)%d%n%s%n'"
alias gbls="git branch --list"
# list git branches sorted by date
alias gbo="git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname:short)'"
alias gst="git status -sb"
alias gaa="git add . -A"
alias gfu="git fetch upstream"
alias gfo="git fetch origin"
alias gsc="git stash clear"
alias cbr="git-branch-current"
alias unstage="git reset"
alias rollback="git reset --hard"
alias undo1="git reset --soft 'HEAD^'"
alias undopush="git push -f origin HEAD^:master"
alias undorebase="git reset --hard ORIG_HEAD"
alias gdf="git diff"
alias gprom="git pull --rebase origin master"
alias gcms="git commit -S -m"

alias delmerged='git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d'

# need single quotes on aliases below to prevent git error in not git directories on shell startup
# git root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'
alias gignore='git update-index --assume-unchanged'
alias gunignore='git update-index --no-assume-unchanged'


###############################################################################
# Ember
###############################################################################
alias egd="ember g delegate"
alias egc="ember g component"
alias egs="ember g service"
alias egr="ember g route"
alias edd="ember d delegate"
alias edc="ember d component"
alias eds="ember d service"
alias edr="ember d route"

###############################################################################
# alexheyd.github.io
###############################################################################
alias deploy_gh="ember github-pages:commit --branch master --message \"GitHub Pages update.\""
