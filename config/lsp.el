;; Eglot is built into Emacs 29+ — language servers come from Nix packages.
(use-package eglot
  :straight nil
  :hook
  ((sh-mode     . eglot-ensure)   ; bash-language-server
   (nix-mode    . eglot-ensure)   ; nixd
   (yaml-mode   . eglot-ensure)   ; yaml-language-server
   (python-mode . eglot-ensure)   ; needs pyright or pylsp in home.packages
   (ruby-mode   . eglot-ensure)   ; needs solargraph or ruby-lsp in home.packages
   (go-mode     . eglot-ensure))  ; needs gopls in home.packages
  :config
  ;; M-. and M-? are standard Emacs xref bindings — already set globally.
  ;; M-. = go to definition    M-? = find references    M-, = jump back
  ;; These add the less common ones:
  (global-set-key (kbd "C-c c a") 'eglot-code-actions)
  (global-set-key (kbd "C-c c r") 'eglot-rename)
  ;; Full hover docs on demand — eldoc shows a one-liner automatically
  (global-set-key (kbd "C-c c d") 'eldoc-doc-buffer))

(use-package nix-mode)
(use-package yaml-mode)
