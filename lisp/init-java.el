;;; init-java.el --- Java LSP configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package lsp-java
  :ensure t
  :config (add-hook 'java-mode-hook 'lsp))
(provide 'init-java)
;;;init-java.el ends here
