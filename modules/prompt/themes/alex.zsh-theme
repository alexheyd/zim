# Inspired by damoekri theme

pmodload 'helper'

function prompt_alex_pwd {
  # local pwd="${PWD/#$HOME/~}"

  _prompt_alex_pwd="\

%{%F{cyan}%}%n@%m%{%f%} %F{red}%~%f"
}

function prompt_alex_precmd {
  setopt LOCAL_OPTIONS
  unsetopt XTRACE KSH_ARRAYS

  # Format PWD.
  prompt_alex_pwd

  # Get Git repository information.
  if (( $+functions[git-info] )); then
    git-info
  fi
}

function prompt_alex_setup {
  setopt LOCAL_OPTIONS
  unsetopt XTRACE KSH_ARRAYS
  prompt_opts=(cr percent subst)

  # Load required functions.
  autoload -Uz add-zsh-hook

  # Add hook for calling git-info and ruby-info before each command.
  add-zsh-hook precmd prompt_alex_precmd

  # Set editor-info parameters.
  zstyle ':prezto:module:editor:info:keymap:primary' format ' %F{green}»%f'

  # Set git-info parameters.
  zstyle ':prezto:module:git:info' verbose 'yes'
  zstyle ':prezto:module:git:info:action' format ':%F{magenta}%s%f'
  zstyle ':prezto:module:git:info:branch' format '%F{cyan}%b%f'
  zstyle ':prezto:module:git:info:clean' format ' %F{green}✔%f'
  zstyle ':prezto:module:git:info:dirty' format ' %F{red}✗%f'
  zstyle ':prezto:module:git:info:commit' format '%F{blue}%.7c%f'
  zstyle ':prezto:module:git:info:position' format '%F{blue}%p%f'
  zstyle ':prezto:module:git:info:keys' format \
    'rprompt' ' $(coalesce "%b" "%p" "%c")%s%C%D'

  # Define prompts.
  PROMPT='%F{cyan}${_prompt_alex_pwd}%f${editor_info[keymap]} '
  RPROMPT='${git_info:+${(e)git_info[rprompt]}}'
}

prompt_alex_setup "$@"
