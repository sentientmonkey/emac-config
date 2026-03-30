(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-undo-system 'undo-fu)
  ;; In terminal mode, ESC is ambiguous — Emacs waits to see if more
  ;; characters follow (for meta sequences). Setting this to 0 makes
  ;; ESC respond immediately instead of waiting out the timeout.
  (setq evil-esc-delay 0)
  :config
  (evil-mode 1)
  (evil-set-leader 'normal ","))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))
