; load all the other good things
(add-to-list 'load-path "~/.emacs.d")

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

;disable abbrev-mode
(setq default-abbrev-mode nil)

;final newline
(setq require-final-newline t)
(setq mode-require-final-newline t)

;remove trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;disable vc-git (dont use it and too slow to start up)
(setq vc-handled-backends nil)

;auto-indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;enable package manager
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(require 'flymake-cursor)
(add-hook 'find-file-hook 'flymake-find-file-hook)

(elpy-enable)

;call gofmt on the script when saving
(add-hook 'go-mode-hook
	  '(lambda ()
	     (add-hook 'before-save-hook 'gofmt)))

;solarize ALL the things
(color-theme-initialize)
(color-theme-solarized-dark)
