;;; init-backup.el --- Emacs backup management -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(defvar --backup-directory (concat user-emacs-directory "backups"))
(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))
(if (not (file-exists-p --backup-directory))
    (make-directory --backup-directory t))
(setq backup-directory-alist `(("." . ,--backup-directory)))
(setq make-backup-files t)         ; backup of a file the first time it is saved.
(setq      backup-by-copying t)               ; don't clobber symlinks
(setq version-control t)                 ; version numbers for backup files
(setq delete-old-versions t)      ; delete excess backup files silently
(setq delete-by-moving-to-trash t)
(setq kept-old-versions 6)        ; oldest versions to keep when a new numbered backup is made (default: 2)
(setq kept-new-versions 9)         ; newest versions to keep when a new numbered backup is made (default: 2)
(setq auto-save-default t)          ; auto-save every buffer that visits a file
(setq auto-save-timeout 20)           ; number of seconds idle time before auto-save (default: 30)
(setq auto-save-interval 200)            ; number of keystrokes between auto-saves (default: 300)
(provide 'init-backup)
;;; init-backup.el ends here
