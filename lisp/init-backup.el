;;; init-backup.el --- Emacs backup management -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Put backup files neatly away
(let ((backup-dir "~/tmp/emacs/backups")
      (auto-saves-dir "~/tmp/emacs/auto-saves/"))
  (dolist (dir (list backup-dir auto-saves-dir))
    (when (not (file-directory-p dir))
      (make-directory dir t)))
  (setq backup-directory-alist `(("." . ,backup-dir))
	auto-save-file-name-transforms `((".*" ,auto-saves-dir t))
	auto-save-list-file-prefix (concat auto-saves-dir ".saves-")
	tramp-backup-directory-alist `((".*" . ,backup-dir))
	tramp-auto-save-directory auto-saves-dir))

(setq make-backup-files t)        ; backup of a file the first time it is saved.
(setq backup-by-copying t)        ; don't clobber symlinks
(setq version-control t)          ; version numbers for backup files
(setq delete-old-versions t)      ; delete excess backup files silently
(setq delete-by-moving-to-trash t)
(setq kept-old-versions 6)        ; oldest versions to keep when a new numbered backup is made (default: 2)
(setq kept-new-versions 9)        ; newest versions to keep when a new numbered backup is made (default: 2)
(setq auto-save-default t)        ; auto-save every buffer that visits a file
(setq auto-save-timeout 20)       ; number of seconds idle time before auto-save (default: 30)
(setq auto-save-interval 200)     ; number of keystrokes between auto-saves (default: 300)
(provide 'init-backup)
;;; init-backup.el ends here
