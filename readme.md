emacs-setup
================================================================================

Simple bash script to set up my emacs environment
--------------------------------------------------------------------------------
  
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

