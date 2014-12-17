;;==================================================
;;cedet插件设置
;;==================================================
(add-to-list 'load-path "~/.emacs.d/site-lisp/ecb-master")
(add-to-list 'load-path "~/.emacs.d/site-lisp/cedet-1.1/speedbar")
(add-to-list 'load-path "~/.emacs.d/site-lisp/cedet-1.1/eieio")
(add-to-list 'load-path "~/.emacs.d/site-lisp/cedet-1.1/semantic")
(load-file "~/.emacs.d/site-lisp/cedet-1.1/common/cedet.el")
;; Load CEDET.,从cedet的INSTALL中复制过来的
;; See cedet/common/cedet.info for configuration details.


;; Enable EDE (Project Management) features
(global-ede-mode 1)
 
 ;;----------------------------------------------------------------------
(semantic-load-enable-minimum-features)
;;(semantic-load-enable-code-helpers)
;;(semantic-load-enable-guady-code-helpers)
;;(semantic-load-enable-excessive-code-helpers)
;;(semantic-load-enable-semantic-debugging-helpers)

(global-ede-mode t)
;;代码折叠
;;(require 'semantic-tag-folding nil 'noerror)
(global-semantic-tag-folding-mode 1)
;;折叠和打开整个buffer的所有代码
(define-key semantic-tag-folding-mode-map (kbd "C--") 'semantic-tag-folding-fold-all)
(define-key semantic-tag-folding-mode-map (kbd "C-=") 'semantic-tag-folding-show-all)
;;折叠和打开单个buffer的所有代码
(define-key semantic-tag-folding-mode-map (kbd "C-_") 'semantic-tag-folding-fold-block)
(define-key semantic-tag-folding-mode-map (kbd "C-+") 'semantic-tag-folding-show-block)


;;==============================================================
;;ecb配置
;;==============================================================
;;(require 'ecb)
;;开启ecb用,M-x:ecb-activate

(require 'ecb-autogen)
;;自动启动ecb并且不显示每日提示
;;(require 'ecb)
;;(setq ecb-auto-activate t)
(setq ecb-tip-of-the-day nil)

(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

(provide 'init-cycode)
