;; -*- Emacs-Lisp -*-

;; Time-stamp: <2010-09-05 16:50:50 Sunday by taoshanwen>

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

(defun base-face-settings ()
  "Base face settings."
  ;;中文与外文字体设置
  ;; Setting English Font
  ;; 颜色配置
  ;; 高亮显示
  (set-face-foreground 'highlight "red")
  (set-face-background 'highlight "blue")
  (setq scroll-margin 0 scroll-conservatively 10000)
  ;;(set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-17-*-*-*-m-0-iso10646-1")
  (set-default-font "DejaVu Sans Mono-13")
  ;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode
  (setq default-major-mode 'text-mode)
  (add-hook 'text-mode-hook 'turn-on-auto-fill) 
  ;; 是否使用黑色背景
  (defvar use-black-background t "*Use black ground or not.")

;; 区域显示
(custom-set-faces
  '(region
     ((((class color) (min-colors 88) (background dark))
       :background "#4CAA4CAA4CAA")
      (((class color) (min-colors 88) (background light))
       :background "lightgoldenrod2")
      (((class color) (min-colors 16) (background dark))
       :background "wheat")
      (((class color) (min-colors 16) (background light))
       :background "lightgoldenrod2")
      (((class color) (min-colors 8)) :background "blue" :foreground "red")
      (((type tty) (class mono)) :inverse-video t)
      (t :background "gray"))))

  ;; 设置界面
  (if use-black-background
      (progn
        (set-background-color "black")
        (set-foreground-color "white")
        (set-cursor-color "green"))
    (set-background-color "white")
    (set-foreground-color "black")
    (set-cursor-color "blue")))

(eval-after-load "faces"
  `(base-face-settings))

(provide 'base-face-settings)
