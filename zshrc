#
# User configuration sourced by interactive shells
#

# Change default zim location 
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Source zim
if [[ -s ${ZIM_HOME}/init.zsh ]]; then
  source ${ZIM_HOME}/init.zsh
fi
if [[ -s ${ZIM_HOME}/.zlogin ]]; then
  source ${ZIM_HOME}/.zlogin
fi

source ${HOME}/.zsh_env
# export LC_ALL=en_US.UFT-8 
