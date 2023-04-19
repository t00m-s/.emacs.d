;;; init-org.el --- Org mode configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package org
  :ensure t)
(setq org-confirm-babel-evaluate nil)
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)
(setq org-src-preserve-indentation nil)
(setq org-edit-src-content-indentation 0)
(setq org-latex-listings t)
(org-babel-do-load-languages
 'org-babel-load-languages '((C . t)
			     (R . t)
			     (java . t)))

(provide 'init-org)
;;; init-org.el ends here
