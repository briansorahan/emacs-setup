LOAD_DIR=$(HOME)/dotfiles/modes
DOTEMACS=$(HOME)/.emacs

all:
	cd $(LOAD_DIR) && emacs --batch -f batch-byte-compile *.el
	sed "s;__LOAD_DIR__;${LOAD_DIR};" dot.emacs > $(DOTEMACS)
	cp dot.gitconfig ~/.gitconfig

clean:
	cd $(LOAD_DIR) && rm *.elc

.PHONY: all clean
