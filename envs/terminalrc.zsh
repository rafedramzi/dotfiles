# 10ms for key sequences
KEYTIMEOUT=1

export GPG_TTY=$(tty)
bindkey '\ef' emacs-forward-word
bindkey '\eb' emacs-backward-word

bindkey "^[[1;5C" emacs-forward-word # ^[^[[C For OSX
bindkey "^[[1;5D" emacs-backward-word # ^[^[[D FOR OSX

