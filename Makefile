LOAD_DIR=$(HOME)/emacs-setup/modes
DOTEMACS=$(HOME)/.emacs
EMACS_FILES=$(HOME)/.emacs.files
EMACS_TMP=$(EMACS_FILES)/tmp

all:
	mkdir -p $(EMACS_TMP)
	cd $(LOAD_DIR) && emacs --batch -f batch-byte-compile *.el

install: all
	sed "s;__LOAD_DIR__;${LOAD_DIR};" emacs.el > $(DOTEMACS)

clean:
	cd $(LOAD_DIR) && rm *.elc

.PHONY: all install clean
