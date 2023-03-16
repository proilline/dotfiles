[[ -f ~/.zsh-plugins/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- \
            https://github.com/marlonrichert/zsh-snap.git ~/.zsh-plugins/zsh-snap

source ~/.zsh-plugins/zsh-snap/znap.zsh
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/leone/.zshrc'

autoload -Uz compinit promptinit
compinit
# End of lines added by compinstall


znap prompt sindresorhus/pure

znap source zdharma-continuum/fast-syntax-highlighting
znap source Senderman/doas-zsh-plugin
znap source hlissner/zsh-autopair
znap source zsh-users/zsh-autosuggestions

export PATH=$PATH:${HOME}/.scripts:${HOME}/.bin
export GTK_IM_MODULE=kime
export QT_IM_MODULE=kime
export XMODIFIERS=@im=kime
export GRIM_DEFAULT_DIR="${HOME}/Images/screenshot/"

if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir "${XDG_RUNTIME_DIR}"
		chmod 0700 "${XDG_RUNTIME_DIR}"
	fi
fi
