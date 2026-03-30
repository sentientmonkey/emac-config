;; ── Active theme ─────────────────────────────────────────────
;; Browse all installed themes with: M-x consult-theme
;; Variants: tokyonight-night, tokyonight-storm, tokyonight-moon, tokyonight-day
(use-package tokyonight-themes
  :straight (:host github :repo "xuchengpeng/tokyonight-themes")
  :config
  (load-theme 'tokyonight-storm t))


;; ── Additional themes (available via M-x consult-theme) ──────
;; These are installed but not activated — browse them without
;; committing to any. Change the load-theme call above to switch.

;; doom-themes: large collection including doom-tomorrow-night,
;; doom-tomorrow-day, doom-molokai, and many others.
(use-package doom-themes)

;; solarized-theme: light and dark variants (solarized-light, solarized-dark)
(use-package solarized-theme)

;; darcula-theme: JetBrains-style dark theme
(use-package darcula-theme)


;; ── Rainbow delimiters ────────────────────────────────────────
;; Colours matching brackets/parens by depth — equivalent to
;; luochen1990/rainbow in your nvim config. Especially useful in Lisp.
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))


;; ── Modeline ─────────────────────────────────────────────────
(use-package nerd-icons)

(use-package doom-modeline
  :after nerd-icons
  :config
  (setq doom-modeline-height 1)
  (setq doom-modeline-column-zero-based nil)
  (setq doom-modeline-lsp t)
  (doom-modeline-mode 1))


;; ── Font ─────────────────────────────────────────────────────
;; Height is in 1/10 pt — 160 = 16pt
(set-face-attribute 'default nil
                    :family "Hack Nerd Font Mono"
                    :height 160)
