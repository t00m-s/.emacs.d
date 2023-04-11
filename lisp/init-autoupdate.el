;;; init-autoupdate.el --- Emacs auto-update packages -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package auto-package-update
  :ensure t)
(setq auto-package-update-prompt-before-update 't)
(setq auto-package-update-delete-old-versions 't)
(auto-package-update-maybe)
(provide 'init-autoupdate)
;;; init-autoupdate.el ends here
