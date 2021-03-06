;;; Init

;;; Load
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "snippets" user-emacs-directory))

;;; Config
(load "init")
(load "dorg")
(load "global")
(load "editor")

;;; Modules
(load "dlc-theme")
(load "dlc-nav")

;;; Languages
(load "dlc-rust")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (cyberpunk-theme cyberpunk-2019-theme company xclip kaolin-themes use-package tide racer go-mode flycheck-rust ethan-wspace dracula-theme cargo auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
