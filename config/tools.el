;; ── Neotree ──────────────────────────────────────────────────
;; Sidebar file explorer — simpler than Treemacs, closer to nvim-tree.
;; evil-collection handles vim bindings inside the neotree buffer.
(use-package neotree
  :config
  (evil-define-key 'normal 'global (kbd "<leader>e") 'neotree-toggle)
  ;; Open neotree at the git root, falling back to current file's directory
  (setq neo-smart-open t))


;; ── Magit ────────────────────────────────────────────────────
;; Git interface. The killer Emacs app for git — far beyond what you
;; can do in a terminal. Stage individual hunks, interactively rebase,
;; manage stashes, all from a keyboard-driven buffer.
;;
;; evil-collection already sets up vim bindings inside magit buffers
;; (j/k to navigate, Enter to drill in, etc.) — no extra config needed.
(use-package magit
  :config
  (evil-define-key 'normal 'global (kbd "<leader>gs") 'magit-status)
  (evil-define-key 'normal 'global (kbd "<leader>gb") 'magit-blame))


;; ── Markdown ─────────────────────────────────────────────────
;; Syntax highlighting, outline navigation, and editing support for .md files.
;; `markdown-mode' automatically activates for .md and .markdown files.
(use-package markdown-mode
  :mode (("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :config
  ;; Use `gd` to follow links in markdown, consistent with LSP behaviour
  (evil-define-key 'normal markdown-mode-map (kbd "gd") 'markdown-follow-thing-at-point))
