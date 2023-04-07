;;; init-python.el --- Python config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(leaf elpy
  :ensure t
  :defer-config t
  :init
  (advice-add 'python-mode :before 'elpy-enable))
(setq elpy-rpc-virtualenv-path '/home/tom/Developlment/Python/VirtualEnv/activate)
(provide 'init-python)
;;; init-python.el ends here
