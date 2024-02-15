#------------ ALIASES
alias chrome="open -a 'Google Chrome'"
alias python=python3 
alias tf=terraform

#------------ GIT BRANCH IN TERMINAL PROMPT 
### ref: https://medium.com/pareture/simplest-zsh-prompt-configs-for-git-branch-name-3d01602a6f33
# Enabling and setting git info var to be used in prompt config.
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "(%b) "
precmd() {
    vcs_info
}

# Enable substitution in the prompt.
setopt prompt_subst

#------------ TERMINAL PROMPT STYLING

PROMPT='%F{210}%n %F{81}%1~ %F{79}${vcs_info_msg_0_}%F{222}$ %f'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
