;;; init-typescript.el --- Typescript configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package typescript-mode
  :ensure t)
(add-hook 'typescript-mode-hook 'lsp-deferred)
(add-hook 'javascript-mode-hook 'lsp-deferred)
(provide 'init-typescript)
;;;init-typescript.el ends here
