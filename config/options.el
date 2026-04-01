;; ── Startup ──────────────────────────────────────────────────
(setq inhibit-startup-message t)


;; ── UI Chrome ────────────────────────────────────────────────
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(column-number-mode t)


;; ── Line Numbers ─────────────────────────────────────────────
;; t = absolute. Change to 'relative for vim-style relative numbers.
(setq display-line-numbers-type t)
(global-display-line-numbers-mode t)


;; ── Long Lines ───────────────────────────────────────────────
(setq-default truncate-lines t)


;; ── Indentation ──────────────────────────────────────────────
;; Major modes (e.g. go-mode) can override these locally.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)


;; ── Visual Guides ────────────────────────────────────────────
(show-paren-mode t)
;; (global-hl-line-mode t)  ; disabled — too visually heavy

;; Vertical line at column 100
(setq-default fill-column 100)
(global-display-fill-column-indicator-mode t)


;; ── Mouse ────────────────────────────────────────────────────
;; Enable mouse support in terminal mode — click to focus windows,
;; position cursor, and scroll. Requires a terminal that supports
;; mouse reporting (kitty and ghostty both do).
(xterm-mouse-mode 1)
(global-set-key (kbd "<mouse-4>") 'scroll-down-line)
(global-set-key (kbd "<mouse-5>") 'scroll-up-line)


;; ── Scrolling ────────────────────────────────────────────────
(setq scroll-margin 3)
(setq scroll-conservatively 101)


;; ── Clipboard ────────────────────────────────────────────────
(setq select-enable-clipboard t)
(setq select-enable-primary t)


;; ── Search ───────────────────────────────────────────────────
(setq case-fold-search t)


;; ── Files ────────────────────────────────────────────────────
(global-auto-revert-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq vc-follow-symlinks t)


;; ── Windows / Splits ─────────────────────────────────────────
(setq split-height-threshold nil)
(setq split-window-preferred-function 'split-window-sensibly)


;; ── Expand Region ────────────────────────────────────────────
;; Progressively expand selection by semantic units.
;; Press C-= repeatedly: word → symbol → string → block → ...
;; Press C-- to contract back.
(use-package expand-region
  :config
  (global-set-key (kbd "C-=") 'er/expand-region)
  (global-set-key (kbd "C--") 'er/contract-region))


;; ── Commenting ───────────────────────────────────────────────
;; comment-line toggles the current line (or selected region), then moves down.
;; Hold C-c / to comment multiple lines in sequence, like gcc in vim-commentary.
;; M-; (comment-dwim) still works for end-of-line comments and region comments.
(global-set-key (kbd "C-c /") 'comment-line)
