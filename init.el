(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(eval-when-compile
  (require 'use-package))

(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'doom-modeline)
(doom-modeline-mode 't)
(require 'all-the-icons)

(require 'ivy)
(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)

(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-frame-font "Fira Code 14" nil t)
(setq inhibit-startup-screen t)
