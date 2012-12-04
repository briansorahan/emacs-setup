emacs-setup
================================================================================

Simple bash script to set up my emacs environment
--------------------------------------------------------------------------------
  
## Sets up the following
- key bindings
- js2-mode
- dired-details
- workgroups

## Install
    $ git clone git://github.com/briansorahan/emacs-setup.git

## Usage
    $ cd emacs-setup
    $ ./run

## Options
#### *-d* Specify a directory for .el files
    $ ./run -d/path/to/my/fav/emacs/dir
Note that this directory must be on your
[load-path](http://emacswiki.org/emacs/LoadPath).
Default is /usr/share/emacs/site-lisp

