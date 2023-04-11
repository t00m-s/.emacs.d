;;; init-python.el --- Python config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package elpy
  :ensure t
  :defer t
  :init
  (advice-add 'python-mode :before 'elpy-enable))

(provide 'init-python)
;;; init-python.el ends here
