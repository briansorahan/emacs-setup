;;
;; make pretty colors in the shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;;
;; Add to load-path
(add-to-list 'load-path "${EMACS_LOAD_DIR}")
;;
;; js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;;
;; Workgroups
(require 'workgroups)
(workgroups-mode 1)
(wg-load "${DEFAULT_WORKGROUP}")
;;
;; zencoding
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)
;;
;; Dired-details
(require 'dired-details)
(require 'dired-details+)
;;
;; buffer-move
(require 'buffer-move)
;;
;; fit-frame
(require 'fit-frame)
;;
;; autofit-frame
(require 'autofit-frame)
;;
;; hide/show
(add-hook 'js2-mode-hook
          (lambda ()
            ;; Scan the file for nested code blocks
            (imenu-add-menubar-index)
            ;; Activate the folding mode
            (hs-minor-mode t)))
;;