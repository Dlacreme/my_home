(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)
;; Skip the default splash screen.
(setq inhibit-startup-message t)

;; backup in one place. flat, no tree structure
(setq auto-save-default nil) ; stop creating #autosave# files
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))

;; Navigation
(add-to-list 'load-path (expand-file-name "modules/nav" user-emacs-directory))
(require 'nav)
(nav-disable-overeager-window-splitting)
(global-set-key (kbd "<f8>") 'nav-toggle)

;; This allows global-hl-line be disabled for certain buffers (nav in our case)
(make-variable-buffer-local 'global-hl-line-mode)

(defun nav-mode-hl-hook ()
  (setq global-hl-line-mode nil)
  (set (make-local-variable 'hl-line-face) 'nav-hl-line)
  (hl-line-mode t)
  (local-set-key (kbd "<right>") 'nav-open-file-under-cursor)
  (local-set-key (kbd "<left>")  'nav-go-up-one-dir))

(add-hook 'nav-mode-hook 'nav-mode-hl-hook)