;;; init-lsp.el --- Ivy and Swiper config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp)
(setq lsp-warn-no-matched-clients 't)

(require 'lsp-ui)
(lsp-ui-mode 't)

(require 'lsp-ivy)
(lsp-ivy-workspace-symbol 't)
(provide 'init-lsp)
;;;init-lsp.el ends here
