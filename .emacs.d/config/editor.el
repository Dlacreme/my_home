;; Hide some things
(menu-bar-mode -1)
(tool-bar-mode -1)
;(scroll-bar-mode -1)

;(global-set-key (kbd "<mouse-2>") 'clipboard-yank)
;(setq x-select-enable-clipboard t)
;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
;(setq x-select-enable-primary t)

(show-paren-mode 1)

;; Lines and columns
(column-number-mode t)
(global-linum-mode 1)
(setq linum-format "  %d   ")

;; Highligh current line
(global-hl-line-mode 1)

;; Config
(setq truncate-partial-width-windows nil)
(setq ring-bell-function 'ignore)
(display-time-mode t)

;; Set standard indent to 2 rather that 4
(setq standard-indent 4)

;; Use space instead of tabs
(setq-default indent-tabs-mode nil)
(setq sentence-end-double-space nil)
(xterm-mouse-mode 1)

;; Always indent after a newline.
(define-key global-map (kbd "RET") 'newline-and-indent)

(setq mode-require-final-newline nil)
(setq require-final-newline nil)

;; Set default indentation for various languages (add your own!)
(setq-default tab-width 4)
;; Javascript
(setq-default js2-basic-offset 2)
;; JSON
(setq-default js-indent-level 2)
;; Typescript
(setq typescript-indent-level 2
      typescript-expr-indent-offset 2)
;; Python
(setq-default py-indent-offset 2)
;; XML
(setq-default nxml-child-indent 2)
;; C
(setq-default c-basic-offset 4)
;; HTML etc with web-mode
(setq-default web-mode-markup-indent-offset 2
              web-mode-css-indent-offset 2
              web-mode-code-indent-offset 2
              web-mode-style-padding 2
              web-mode-script-padding 2)

;; Set the default formatting styles for various C based modes.
;; Particularly, change the default style from GNU to Java.
;; rms, I love you, but your formatting style makes my eyes bleed.
(setq c-default-style
      '((awk-mode . "awk")
        (other . "java")))
