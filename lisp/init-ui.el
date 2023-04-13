;;; init-ui.el --- Emacs UI changes -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package doom-modeline
  :ensure t)
(use-package all-the-icons
  :ensure t)
(use-package undo-tree
  :ensure t)
(use-package doom-themes
  :ensure t)

(require 'init-ligatures)

(doom-modeline-mode 't)
(display-battery-mode 't)
(global-undo-tree-mode 't)
(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(save-place-mode 1)
(set-frame-font "Fira Code 14" nil t)
(setq inhibit-startup-screen t)
(display-line-numbers-mode 't)
(setq display-line-numbers 'relative)

(load-theme 'doom-tokyo-night)

(provide 'init-ui)
;;; init-ui.el ends here
