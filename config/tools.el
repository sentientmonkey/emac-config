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
;; Full terminal emulator in Emacs. Pure Elisp — no compilation needed.
(use-package eat
  :init
  (global-set-key (kbd "C-c t")
    (lambda ()
      (interactive)
      (split-window-below)
      (other-window 1)
      (eat)))
  :config
  (setq eat-term-name "xterm-256color")
  (setq eat-minimum-latency 0.002)
  (setq eat-maximum-latency 0.02))
