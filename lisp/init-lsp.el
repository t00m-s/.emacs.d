;;; init-lsp.el --- Ivy and Swiper config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(require 'lsp-mode)
(add-hook 'prog-mode-hook #'lsp)
(setq lsp-warn-no-matched-clients 't)
(provide 'init-lsp)
;;;init-lsp.el ends here
