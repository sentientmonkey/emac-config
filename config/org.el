(use-package org
  :straight nil
  :config
  (setq org-directory "~/org")
  (setq org-default-notes-file (concat org-directory "/notes.org"))
  (setq org-src-fontify-natively t)
  (setq org-src-tab-acts-natively t)
  (setq org-src-preserve-indentation t)
  (setq org-todo-keywords
        '((sequence "TODO(t)" "IN-PROGRESS(i)" "|" "DONE(d)" "CANCELLED(c)")))
  (setq org-capture-templates
        '(("t" "Task" entry (file+headline "~/org/tasks.org" "Tasks")
           "* TODO %?\n  %i\n")
          ("n" "Note" entry (file+headline "~/org/notes.org" "Notes")
           "* %?\n  %i\n")))
  (setq org-agenda-files (list org-directory))
  (global-set-key (kbd "C-c o a") 'org-agenda)
  (global-set-key (kbd "C-c o c") 'org-capture)
  (global-set-key (kbd "C-c o o")
    (lambda () (interactive) (find-file org-default-notes-file))))
