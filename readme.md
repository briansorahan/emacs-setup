emacs-setup
================================================================================

Simple bash script to set up my emacs environment
--------------------------------------------------------------------------------
  
## Sets up the following
- key bindings
- js2-mode
- dired-details
- workgroups
- fit-frame
- autofit-frame
- js-comint
- hide/show

## Install
    $ git clone git://github.com/briansorahan/emacs-setup.git
    $ cd emacs-setup
    $ ./run

## Options
#### *-d*<directory> Specify a directory for .el files
    $ ./run -d/usr/share/emacs/site-lisp
Note that this directory must be on your
[load-path](http://emacswiki.org/emacs/LoadPath).
Default is ~/.emacs.d/site-lisp (will be created if it doesn't exist).

