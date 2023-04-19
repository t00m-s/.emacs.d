;;; init-functions.el --- Custom functions -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun kill-other-buffers ()
  "Kills other buffers"
  (interactive)
    (mapc 'kill-buffer (cdr (buffer-list (current-buffer)))))
(provide 'init-functions)
;;; init-functions.el ends here
