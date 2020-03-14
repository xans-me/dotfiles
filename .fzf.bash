# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/hakuba/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/hakuba/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/hakuba/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/hakuba/.fzf/shell/key-bindings.bash"
