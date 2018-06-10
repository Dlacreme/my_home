;; Or, if you use `use-package', do something like this:
(use-package dracula-theme
  :init (progn (load-theme 'dracula t t)
               (enable-theme 'dracula))
  :defer t
  :ensure t)