c() { cd ~/code/$1; }
_c() { _files -W ~/code -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

export EDITOR='mate -w'
# norm.zsh-theme
# gallois.zsh-theme
# risto.zsh-theme
ZSH_THEME="wedisagree"

# autocorrect is more annoying than helpful
#unsetopt correct_all

# a few aliases I like
alias gs='git status'
alias gd='git diff'
alias tlog='tail -f log/development.log'
alias vime="mvim ."
alias tlgo='cd /Users/ljime3/Sites/travel-leisure'
alias vengo='cd ~/Sites/venues_sql_service/'
alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias fix_brew='sudo chown ljime3:wheel /usr/local/'
alias be='bundle exec'
alias ms_sql_connect='iodbctest "dsn=oats_dev_lj;uid=rails_dev;pwd=r@1L51120"'
alias mergetool='git mergetool -t opendiff'
alias autotest='AUTOFEATURE=true autotest'
alias powup='curl get.pow.cx | sh'
alias powdown='curl get.pow.cx/uninstall.sh | sh ; sudo rm /etc/resolver/dev; dscacheutil -flushcache'
alias pow-link='powder unlink; powder link; powder open'
alias jenk="java -jar /usr/local/bin/jenkins-cli.jar -s http://builder.amexpub.com"
alias comp-week="coffee --compile --watch --output /Users/ljime3/Documents/Titanium_Studio_Workspace/WeekendGetaways/Resources/javascripts /Users/ljime3/Documents/Titanium_Studio_Workspace/WeekendGetaways/Resources/coffeescripts"
alias comp-bounty="coffee --compile --watch --output /Users/ljime3/Documents/Titanium_Studio_Workspace/TiBountyHunter/Resources/javascripts /Users/ljime3/Documents/Titanium_Studio_Workspace/TiBountyHunter/Resources/coffeescripts"

AUTOFEATURE=true
export ODBCINI=/usr/local/etc/odbc.ini
export ODBCSYSINI=/usr/local/etc/odbcinst.ini
export FREETDSCONF=/usr/local/etc/freetds.conf
export BUNDLER_EDITOR=`which mvim`

AUTOFEATURE=true
export ODBCINI=/usr/local/etc/odbc.ini
export ODBCSYSINI=/usr/local/etc/odbcinst.ini
export FREETDSCONF=/usr/local/etc/freetds.conf
export BUNDLER_EDITOR='vim'
export EDITOR='vim'
export NODE_PATH='/usr/local/lib/node_modules'
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# mappings for Ctrl/Option-left-arrow and Ctrl/Option-right-arrow for word moving
 #bindkey "\e[1;5C" forward-word
 #bindkey "\e[1;5D" backward-word
 #bindkey "\e[5C"   forward-word
 #bindkey "\e[5D"   backward-word
 #bindkey "\e\e[C"  forward-word
 #bindkey "\e\e[D"  backward-word

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[[ -s "$HOME/.tmuxinator/scripts/tmuxinator" ]] && source "$HOME/.tmuxinator/scripts/tmuxinator"

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
