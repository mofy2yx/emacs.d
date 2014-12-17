;;; evil-matchit-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (global-evil-matchit-mode turn-off-evil-matchit-mode
;;;;;;  turn-on-evil-matchit-mode evil-matchit-mode evilmi-delete-items
;;;;;;  evilmi-select-items evilmi-jump-items) "evil-matchit" "evil-matchit.el"
;;;;;;  (21131 7764 435575 276000))
;;; Generated autoloads from evil-matchit.el

(autoload 'evilmi-jump-items "evil-matchit" "\
jump between item/tag(s)

\(fn &optional NUM)" t nil)

(autoload 'evilmi-select-items "evil-matchit" "\
select item/tag(s)

\(fn &optional NUM)" t nil)

(autoload 'evilmi-delete-items "evil-matchit" "\
delete item/tag(s)

\(fn &optional NUM)" t nil)

(autoload 'evil-matchit-mode "evil-matchit" "\
Buffer-local minor mode to emulate matchit.vim

\(fn &optional ARG)" t nil)

(autoload 'turn-on-evil-matchit-mode "evil-matchit" "\
Enable evil-matchit-mode in the current buffer.

\(fn)" nil nil)

(autoload 'turn-off-evil-matchit-mode "evil-matchit" "\
Disable evil-matchit-mode in the current buffer.

\(fn)" nil nil)

(defvar global-evil-matchit-mode nil "\
Non-nil if Global-Evil-Matchit mode is enabled.
See the command `global-evil-matchit-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-evil-matchit-mode'.")

(custom-autoload 'global-evil-matchit-mode "evil-matchit" nil)

(autoload 'global-evil-matchit-mode "evil-matchit" "\
Toggle Evil-Matchit mode in all buffers.
With prefix ARG, enable Global-Evil-Matchit mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Evil-Matchit mode is enabled in all buffers where
`turn-on-evil-matchit-mode' would do it.
See `evil-matchit-mode' for more information on Evil-Matchit mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("evil-matchit-pkg.el") (21131 7764 449177
;;;;;;  782000))

;;;***

(provide 'evil-matchit-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; evil-matchit-autoloads.el ends here
