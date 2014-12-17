;;init planner 
(add-to-list 'load-path "~/.emacs.d/site-lisp/planner/muse-3.12/lisp")
(add-to-list 'load-path "~/.emacs.d/site-lisp/planner/planner-3.42")
(add-to-list 'load-path "~/.emacs.d/site-lisp/planner/remember-2.0")

(setq planner-project "MofyPlanner")
(setq muse-project-alist
 '(("MofyPlanner"
     ("~/.notes/plans"   ;; Or wherever you want your planner files to be
      :default "index"
      :major-mode planner-mode
      :visit-link planner-visit-link))))
(require 'planner)

(require 'remember-planner)
(setq rememeber-handler-functions '(remember-planner-append))
(setq rememeber-annotation-functions planner-annotation-functions)

(require 'muse-wiki)    ;;; Allow wiki-links
(setq muse-wiki-allow-nonexistent-wikiword t) 

(require 'planner-id)
(require 'planner-cyclic)
(require 'planner-deadline)
(require 'planner-multi)
(require 'planner-rank)


(provide 'init-planner)
