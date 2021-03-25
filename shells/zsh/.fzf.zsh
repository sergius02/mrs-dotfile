# Setup fzf
# ---------
if [[ ! "$PATH" == */home/sergio/.dotfiles/modules/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/sergio/.dotfiles/modules/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/sergio/.dotfiles/modules/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/sergio/.dotfiles/modules/fzf/shell/key-bindings.zsh"
