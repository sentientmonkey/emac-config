;; Vertico: vertical completion UI
(use-package vertico
  :config
  (vertico-mode))

;; Orderless: fuzzy/out-of-order matching
(use-package orderless
  :config
  (setq completion-styles '(orderless basic))
  (setq completion-category-overrides
        '((file (styles basic partial-completion)))))

;; Marginalia: annotations in the completion list
(use-package marginalia
  :after vertico
  :config
  (marginalia-mode))

;; Consult: the search/navigation commands
;;
;; C-p   find files (overrides `previous-line' globally — worth it)
;; C-s   search in buffer with preview (replaces basic isearch)
;; C-c s ripgrep across project
;; C-c b switch buffer
;; C-c h search info/docs
(use-package consult
  :config
  (global-set-key (kbd "C-p")   'consult-fd)
  (global-set-key (kbd "C-s")   'consult-line)
  (global-set-key (kbd "C-c s") 'consult-ripgrep)
  (global-set-key (kbd "C-c b") 'consult-buffer)
  (global-set-key (kbd "C-c h") 'consult-info))
