#
# User configuration sourced by interactive shells
#

# Change default zim location 
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Source zim
if [[ -s ${ZIM_HOME}/init.zsh ]]; then
  source ${ZIM_HOME}/init.zsh
fi

source ${HOME}/.zsh_env
# export LC_ALL=en_US.UFT-8 
source ${HOME}/.bash_aliases
