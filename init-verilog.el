(add-to-list 'load-path "~/.emacs.d/site-lisp/verilog-mode")
(require 'verilog-mode)
;; User customization for Verilog mode
(setq verilog-indent-level             4
       verilog-indent-level-module      4
       verilog-indent-level-declaration 4
       verilog-indent-level-behavioral  4
       verilog-indent-level-directive   1
       verilog-case-indent              2
       verilog-auto-newline             t
       verilog-auto-indent-on-newline   t
       verilog-tab-always-indent        t
       verilog-auto-endcomments         t
       verilog-minimum-comment-distance 40
       verilog-indent-begin-after-if    t
       verilog-auto-lineup              'declarations
       verilog-highlight-p1800-keywords nil
       )

(provide 'init-verilog)
