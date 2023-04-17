;;; init-ui.el --- Emacs UI changes -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(require 'init-ligatures)

(use-package doom-modeline
  :ensure t)

(use-package undo-tree
  :ensure t)

(use-package doom-themes
  :ensure t)

(use-package page-break-lines
  :ensure t)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(setq dashboard-startup-banner 'logo)
(setq dashboard-center-content t)

(use-package dirvish
  :ensure t
  :config
  (dirvish-override-dired-mode))

(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

(use-package all-the-icons-dired
  :ensure t
  :config
  (all-the-icons-dired-mode))

(setq dirvish-attributues
      '(vc-state all-the-icons git-msg file-size file-time))

(use-package neotree
  :ensure t
  :config
  (global-set-key [f8] 'neotree-toggle))
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(doom-modeline-mode t)
(display-battery-mode t)

(global-undo-tree-mode t)

(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(save-place-mode 1)

(set-frame-font "Fira Code 14" nil t)
(setq inhibit-startup-screen t)

(setq display-line-numbers-type 'relative)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

(load-theme 'doom-tokyo-night)

(provide 'init-ui)
;;; init-ui.el ends here
