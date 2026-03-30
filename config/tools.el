;; ── Neotree ──────────────────────────────────────────────────
(use-package neotree
  :config
  (global-set-key (kbd "C-c e") 'neotree-toggle)
  (setq neo-smart-open t))


;; ── Magit ────────────────────────────────────────────────────
(use-package magit
  :config
  (global-set-key (kbd "C-c g s") 'magit-status)
  (global-set-key (kbd "C-c g b") 'magit-blame))


;; ── Markdown ─────────────────────────────────────────────────
(use-package markdown-mode
  :mode (("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode)))


;; ── Terminal (eat) ───────────────────────────────────────────
(use-package eat
  :config
  (global-set-key (kbd "C-c t")
    (lambda ()
      (interactive)
      (split-window-below)
      (other-window 1)
      (eat))))
