;; - Default key bindings are:
;;   - C-c ; ? will look up documentation for the symbol under the point.
;;   - C-c ; r will rescan your Doxygen tags file.
;;   - C-c ; f will insert a Doxygen comment for the next function.
;;   - C-c ; i will insert a Doxygen comment for the current file.
;;   - C-c ; ; will insert a Doxygen comment for the current member.
;;   - C-c ; m will insert a blank multiline Doxygen comment.
;;   - C-c ; s will insert a blank singleline Doxygen comment.
;;   - C-c ; @ will insert grouping comments around the current region.
(add-to-list 'load-path "~/.emacs.d/site-lisp/doxygen/")
(require 'doxymacs)
(add-hook 'c-mode-common-hook 'doxymacs-mode)

(provide 'init-doxygen)
