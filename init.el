;;; init.el --- Main configuration file -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(eval-when-compile
  (require 'use-package))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

;;; Performance
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda() (setq gc-cons-threshold normal-gc-cons-threshold))))

;;; Move between buffers with Alt + arrows
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings 'meta))

;;; Packages that require additional config
(require 'init-functions)
(require 'init-autoupdate)
(require 'init-backup)
(require 'init-ivy)
(require 'init-lsp)
(require 'init-ui)
(require 'init-which-key)
(require 'init-magit)
(require 'init-org)
;;; Posso scrivere y al posto di yes
(defalias 'yes-or-no-p 'y-or-n-p)

;;; Evita di spararmi subito un buffer di warning
(setq native-comp-async-report-warnings-errors 'nil)

;;; init.el ends here
