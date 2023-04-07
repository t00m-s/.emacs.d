;;; init.el --- Main configuration file -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(require 'package)
(add-to-list 'package-archives '(("org" . "https://orgmode.org/elpa/")
		       ("melpa" . "https://melpa.org/packages/")
		       ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

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

(defalias 'yes-or-no-p 'y-or-n-p)
(setq native-comp-async-report-warnings-errors 'nil) ;;; Evita di spararmi subito un buffer di warning
(require 'init-ivy)
(require 'init-lsp)
(require 'init-ui)

(provide 'init)
;;; init.el ends here
