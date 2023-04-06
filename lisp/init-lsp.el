;;; init-lsp.el --- Ivy and Swiper config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp)
(setq lsp-warn-no-matched-clients t)
(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 1)
(setq lsp-auto-configure 't)

(provide 'init-lsp)
;;;init-lsp.el ends here
