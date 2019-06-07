(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files (list "~/org/work/10ten.org"
                             "~/org/work/madrasa.org"
                             "~/org/work/souqalmal.org"
                             "~/org/oligarchie.org"
			))
