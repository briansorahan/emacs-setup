LOAD_DIR=$$HOME/emacs-setup/modes
CUR=$$HOME/.emacs
BAK=$$HOME/.emacs.old

all:
	cd $(LOAD_DIR) && emacs --batch -f batch-byte-compile *.el

install:
# [[ -f $(CUR) ]] && mv $(CUR) $(BAK)
	sed "s;__LOAD_DIR__;${LOAD_DIR};" emacs.el > $(CUR)

clean:
	cd $(LOAD_DIR) && rm *.elc

.PHONY: all install clean
