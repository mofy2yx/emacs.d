(add-to-list 'load-path "~/.emacs.d/site-lisp/all-parent-setting")

(require 'highlight-parentheses)
(setq hl-paren-colors '("red" "yellow" "cycan" "magenta" "green" "red"))
(define-globalized-minor-mode global-highlight-parentheses-mode 
 highlight-parentheses-mode
 (lambda()
  (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

;;(require 'autopair)
;;(autopair-global-mode 1)
;;;(add-hook 'c-mode-common-hook #'(lambda () (autopair-mode)))
;;
;;(add-hook 'python-mode-hook
;;          #'(lambda ()
;;              (setq autopair-handle-action-fns
;;                    (list #'autopair-default-handle-action
;;                          #'autopair-python-triple-quote-action))))

(show-paren-mode 1)
(provide 'init-all-parent)
