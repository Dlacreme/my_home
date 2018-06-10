;;; Init

;;; Load
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "snippets" user-emacs-directory))

;;; Config
(load "init")
(load "global")
(load "editor")

;;; Modules
(load "dlc-theme")
(load "dlc-nav")
(load "dlc-completer")
(load "dlc-cleaner") ;; Using flycheck - https://www.emacswiki.org/emacs/Flycheck
(load "dlc-languages")