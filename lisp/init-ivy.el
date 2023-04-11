;;; init-ivy.el --- Ivy and Swiper config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(leaf 'ivy
  :ensure t)
(leaf 'swiper
  :ensure t)
(leaf 'ivy-posframe
  :ensure t)
(ivy-mode)
(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display)))
(ivy-posframe-mode 1)
(setq ivy-use-virtual-buffers 't)
(setq enable-recursive-minibuffers 't)
(global-set-key "\C-s" 'swiper)

(provide 'init-ivy)
;;; init-ivy.el ends here
