;;; init-python.el --- Python config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(leaf elpy
  :ensure t
  :defer-config t
  :init
  (advice-add 'python-mode :before 'elpy-enable))

(provide 'init-python)
;;; init-python.el ends here
