;;; init-dap.el --- Dap mode configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package dap-mode
  :ensure t
  :after lsp-mode
  :config (dap-auto-configure-mode))
(provide 'init-dap)
;;; init-dap.el ends here
