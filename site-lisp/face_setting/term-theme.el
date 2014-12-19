(deftheme term "The Term color theme")

;;; Color Palette

(defvar term-colors-alist
  '(("term-fg"       . "#DCDCCC")
    ("term-fg-1"     . "#656555")
    ("term-bg-1"     . "#2B2B2B")
    ("term-bg-05"    . "#383838")
    ("term-bg"       . "#3F3F3F")
    ("term-bg+1"     . "#4F4F4F")
    ("term-bg+2"     . "#5F5F5F")
    ("term-bg+3"     . "#6F6F6F")
    ("term-red+1"    . "#DCA3A3")
    ("term-red"      . "#CC9393")
    ("term-red-1"    . "#BC8383")
    ("term-red-2"    . "#AC7373")
    ("term-red-3"    . "#9C6363")
    ("term-red-4"    . "#8C5353")
    ("term-orange"   . "#DFAF8F")
    ("term-yellow"   . "#F0DFAF")
    ("term-yellow-1" . "#E0CF9F")
    ("term-yellow-2" . "#D0BF8F")
    ("term-green-1"  . "#5F7F5F")
    ("term-green"    . "green3")
    ("term-green+1"  . "#8FB28F")
    ("term-green+2"  . "#9FC59F")
    ("term-green+3"  . "#AFD8AF")
    ("term-green+4"  . "#BFEBBF")
    ("term-cyan"     . "#93E0E3")
    ("term-blue+1"   . "#94BFF3")
    ("term-blue"     . "steel blue")
    ("term-blue-1"   . "#7CB8BB")
    ("term-blue-2"   . "#6CA0A3")
    ("term-blue-3"   . "#5C888B")
    ("term-blue-4"   . "#4C7073")
    ("term-blue-5"   . "#366060")
    ("term-magenta"  . "#DC8CC3"))
  "List of colors.
Each element has the form (NAME . HEX).

`+N' suffixes indicate a color is lighter.
`-N' suffixes indicate a color is darker.")

(defmacro term-with-color-variables (&rest body)
  "`let' bind all colors defined in `term-colors-alist' around BODY.
Also bind `class' to ((class color) (min-colors 89))."
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   term-colors-alist))
     ,@body))

;;; Term Faces
(term-with-color-variables
  (custom-theme-set-faces
   'term
   `(term-color-black ((t (:foreground ,term-bg
                                       :background ,term-bg-1))))
   `(term-color-red ((t (:foreground ,term-red-2
                                       :background ,term-red-4))))
   `(term-color-green ((t (:foreground ,term-green
                                       :background ,term-green+2))))
   `(term-color-yellow ((t (:foreground ,term-orange
                                       :background ,term-yellow))))
   `(term-color-blue ((t (:foreground ,term-blue-1
                                      :background ,term-blue-4))))
   `(term-color-magenta ((t (:foreground ,term-magenta
                                         :background ,term-red))))
   `(term-color-cyan ((t (:foreground ,term-cyan
                                       :background ,term-blue))))
   `(term-color-white ((t (:foreground ,term-fg
                                       :background ,term-fg-1))))
   '(term-default-fg-color ((t (:inherit term-color-white))))
   '(term-default-bg-color ((t (:inherit term-color-black))))
   ))
(provide-theme 'term)

