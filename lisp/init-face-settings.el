;; -*- Emacs-Lisp -*-

(add-to-list 'load-path "~/.emacs.d/site-lisp/face_setting")
;; 基本颜色设置
(require 'base-face-settings)
(require 'font-lock-face-settings)
(require 'term-theme)

(defun my-maximized ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  )

;;suport emacs daeon
(defun frame-setting ()
  (base-face-settings)
  (font-lock-face-settings)
  (my-maximized)
  )

(if (and (fboundp 'daemonp) (daemonp))
    (add-hook 'after-make-frame-functions
          (lambda (frame)
        (with-selected-frame frame
          (frame-setting))))
  (frame-setting))

(provide 'init-face-settings)
