;;; init-whitespace.el --- Whitespace cleanup config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package whitespace-cleanup-mode
  :ensure t)
(add-hook 'prog-mode-hook 'whitespace-cleanup-mode)
(provide 'init-whitespace)
;;;init-whitespace.el ends here
