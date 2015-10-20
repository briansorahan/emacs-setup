;; Key-bindings

;; get rid of the menu bar
(menu-bar-mode -1)

;; navigation
(global-set-key (kbd "C-o") 'scroll-down)

;; make pretty colors in the shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; Add to load-path
(add-to-list 'load-path "__LOAD_DIR__")

;; tcl mode for expect
(add-to-list 'auto-mode-alist '(".exp$" . tcl-mode))
(add-to-list 'interpreter-mode-alist '("expect" . tcl-mode))

;; packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; common lisp extensions
(require 'cl)

;; chuck-mode
(require 'chuck-mode)

;; protobuf
(require 'protobuf-mode)

;; go
(setq gofmt-command "goimports")
(require 'go-mode-autoloads)
(add-hook 'before-save-hook #'gofmt-before-save)
(global-set-key (kbd "C-c d") 'godoc-at-point)

;; js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))
(setq js2-basic-offset 4)
(setq js2-global-externs '("module" "process" "console" "Buffer"))

;; yaml-mode
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
  '(lambda ()
     (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; dockerfile
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

;; additional configuration
(setq indent-tabs-mode nil)
(setq tab-width 4)
(setq default-tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
