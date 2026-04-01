;; ── Active theme ─────────────────────────────────────────────
;; Browse all installed themes with: M-x consult-theme
;; Variants: tokyonight-night, tokyonight-storm, tokyonight-moon, tokyonight-day
(use-package tokyonight-themes
  :straight (:host github :repo "xuchengpeng/tokyonight-themes")
  :config
  (load-theme 'tokyonight-moon t))


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
  :hook (prog-mode . rainbow-delimiters-mode)
  :config
  ;; Explicit colours for visibility against tokyonight.
  ;; Adjust any of these to taste.
  (custom-set-faces
   '(rainbow-delimiters-depth-1-face ((t (:foreground "#ff6c6b"))))
   '(rainbow-delimiters-depth-2-face ((t (:foreground "#da8548"))))
   '(rainbow-delimiters-depth-3-face ((t (:foreground "#98be65"))))
   '(rainbow-delimiters-depth-4-face ((t (:foreground "#46d9ff"))))
   '(rainbow-delimiters-depth-5-face ((t (:foreground "#a9a1e1"))))
   '(rainbow-delimiters-depth-6-face ((t (:foreground "#ecbe7b"))))
   '(rainbow-delimiters-depth-7-face ((t (:foreground "#c678dd"))))
   '(rainbow-delimiters-depth-8-face ((t (:foreground "#51afef"))))))


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
