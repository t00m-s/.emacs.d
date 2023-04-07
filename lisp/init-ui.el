;;; init-ui.el --- Emacs UI changes -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(require 'doom-modeline)
(require 'all-the-icons)
(require 'init-ligatures)
(leaf 'undo-tree
  :ensure)
(doom-modeline-mode 't)
(display-battery-mode 't)
(global-undo-tree-mode 't)
(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-frame-font "Fira Code 14" nil t)
(setq inhibit-startup-screen t)
(display-line-numbers-mode)
(setq display-line-numbers 'relative)
(provide 'init-ui)
;;; init-ui.el ends here
