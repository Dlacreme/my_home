;; Skip the default splash screen.
(setq inhibit-startup-message t)

;; backup in one place. flat, no tree structure
(setq auto-save-default nil) ; stop creating #autosave# files
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))

(xclip-mode 1)

(setq mouse-wheel-progressive-speed nil)
(global-set-key [mouse-4] 'scroll-down-line)
(global-set-key [mouse-5] 'scroll-up-line)