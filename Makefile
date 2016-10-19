LOAD_DIR=$(HOME)/dotfiles/modes
DOTEMACS=$(HOME)/.emacs

all:
	sed "s;__LOAD_DIR__;${LOAD_DIR};" dot.emacs > $(DOTEMACS)
	cp dot.gitconfig ~/.gitconfig
	cp dot.zshrc ~/.zshrc

clean:
	cd $(LOAD_DIR) && rm *.elc

.PHONY: all clean
