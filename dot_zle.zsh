# Configuration of zle-related commands
function _git-status { echo; git status; local ret=$?; zle redisplay; return "$ret"; }
function _hstr_macro { hstr </dev/tty; local ret=$?; zle redisplay; return "$ret"; }
function _htop_macro { htop </dev/tty; local ret=$?; zle redisplay; return "$ret"; }
zle -N _git-status
zle -N _hstr_macro
zle -N _htop_macro

bindkey '\eg' _git-status
bindkey "\es" _hstr_macro	# bind hstr to alt-s (for Vi mode check doc)
bindkey "\et" _htop_macro	# bind htop to alt-t (for Vi mode check doc)
