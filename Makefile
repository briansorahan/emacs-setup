LOAD_DIR=$(HOME)/dotfiles/modes
DOTEMACS=$(HOME)/.emacs

include rack.mk

all:
	sed "s;__LOAD_DIR__;${LOAD_DIR};" dot.emacs > $(DOTEMACS)
	install --backup --suffix .bak dot.gitconfig $(HOME)/.gitconfig
	install --backup --suffix .bak dot.zshrc     $(HOME)/.zshrc
	cp dot.tmux.conf ~/.tmux.conf

clean:
	cd $(LOAD_DIR) && rm *.elc

.PHONY: all clean
