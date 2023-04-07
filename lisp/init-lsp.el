;;; init-lsp.el --- LSP-Mode configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(leaf 'lsp-mode
  :ensure)
(add-hook 'prog-mode-hook #'lsp)
(setq lsp-warn-no-matched-clients 'nil)
(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 1)
(setq lsp-auto-configure 't)
(require 'init-python)


(provide 'init-lsp)
;;;init-lsp.el ends here
