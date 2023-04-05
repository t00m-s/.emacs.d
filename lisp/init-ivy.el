;;; init-ivy.el --- Ivy and Swiper config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(require 'ivy)
(require 'swiper)
(ivy-mode)
(setq ivy-use-virtual-buffers 't)
(setq enable-recursive-minibuffers 't)
(global-set-ket "\C-s" 'swiper)

(provide 'init-ivy)
;;; init-ivy.el ends here
