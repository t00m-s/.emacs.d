;;; init-lsp.el --- LSP-Mode configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package lsp-mode
  :ensure t)
(use-package yasnippet
  :ensure t)
;; When Emacs 29 is stable remove this.
(use-package tree-sitter-langs
  :ensure t)
(use-package tree-sitter
  :ensure t)

;; Activate tree-sitter globally (minor mode registered on every buffer)
(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)
;; end emacs 29 removal

(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)
(add-hook 'prog-mode-hook #'lsp)
(setq lsp-warn-no-matched-clients 'nil)
(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 1)
(setq lsp-auto-configure 't)
(require 'init-python)
(require 'init-typescript)
(require 'init-whitespace)
(provide 'init-lsp)
;;;init-lsp.el ends here
