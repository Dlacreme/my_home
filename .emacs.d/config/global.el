;; Skip the default splash screen.
(setq inhibit-startup-message t)

;; backup in one place. flat, no tree structure
(setq auto-save-default nil) ; stop creating #autosave# files
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))