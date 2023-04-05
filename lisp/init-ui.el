;;; init-ui.el --- Modifies graphics -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(require 'doom-modeline)
(require 'all-the-icons)
(doom-modeline-mode 't)
(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-frame-font "Fira Code 14" nil t)
(setq inhibit-startup-screen t)

(provide 'init-ui)
;;; init-ui.el ends here
