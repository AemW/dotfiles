# Use a sane editor
set EDITOR nano

# Promt configuration
set SPACEFISH_EXIT_CODE_SHOW true
set SPACEFISH_EXEC_TIME_PREFIX ''
set -e SPACEFISH_RPROMPT_ORDER
set SPACEFISH_PROMPT_ORDER user dir git venv kubecontext exec_time line_sep exit_code char
set SPACEFISH_VENV_PREFIX '<v'
set SPACEFISH_VENV_SUFFIX '> '

# Direnv hooks
direnv hook fish | source
nvm use 10.3.0

set -gx PATH /home/ezandwa/.pyenv/bin $PATH
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

alias rebase="git pull --rebase"
