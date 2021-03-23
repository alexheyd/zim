#
# Custom aliases/settings
#

# any custom stuff should go here.
# ensure that 'custom' exists in the zmodules array in your .zimrc

export PATH="$PATH:$HOME/.rvm/bin:/usr/local/share/python:/usr/bin/:$HOME/.nvm:$HOME/.nvm/versions/v6.8.0/bin/node:/usr/local/lib/ruby/gems/2.6.0/bin" # Add RVM to PATH for scripting

# load zmv module for batch file renaming
# autoload zmv

# load Z script
# source ~/Projects/z/z.sh

# Exports
export VISUAL="code"
export EDITOR="code"
export GIT_EDITOR="code"

# https://github.com/LastPass/lastpass-cli#installing-on-os-x
# needs lastpass-cli for Alfred Workflow
export LPASS_AGENT_TIMEOUT=0

# Git SSH
export GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa -F /dev/null"

# Custom Aliases
source "${0:h}/alias.zsh"

# Node Version Manager (NVM)
source ~/.nvm/nvm.sh

# Drupal console
source "$HOME/.console/console.rc" 2>/dev/null

if [[ -s "/Users/alex/.rvm/scripts/rvm" ]]; then
  source "/Users/alex/.rvm/scripts/rvm"
fi

eval "$(direnv hook zsh)"