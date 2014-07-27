(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete")
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/dict")
(global-auto-complete-mode t)
(ac-config-default)

(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'latex-mode)
(add-to-list 'ac-modes 'nxml-mode)
(add-to-list 'ac-modes 'verilog-mode)

(setq
 ac-delay 0.05
 ac-auto-show-menu t
 ac-ignore-case nil
 ac-menu-height 10
 ac-use-quick-help nil
 ac-disable-faces nil
 )
(set-default 'ac-sources
               '(ac-source-semantic
                 ac-source-yasnippet
                 ac-source-abbrev
                 ac-source-words-in-buffer
                 ac-source-words-in-all-buffer
                 ac-source-imenu
                 ac-source-files-in-current-dir
                 ac-source-filename))
;;(setq ac-modes ac+-modes)

(dolist (command '(backward-delete-char-untabify
                   delete-backward-char
                   viper-del-backward-char-in-insert
                   backward-kill-word))
 (add-to-list 'ac-trigger-commands command))

(defun escape-from-ac-completing ()
 "Excape from ac-completing. First call ac-stop, then call
 viper-exit-insert-state."
 (interactive)
 (ac-stop)
 ;;(viper-exit-insert-state)
 (evil-normal-state))

(define-key ac-completing-map (kbd "<tab>") 'ac-expand)
(define-key ac-completing-map (kbd "C-i") nil)
(define-key ac-completing-map (kbd "\r") nil)
(define-key ac-completing-map [escape] 'escape-from-ac-completing)

(provide 'init-auto-complete)
