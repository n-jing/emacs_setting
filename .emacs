
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(custom-set-variables
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(tango-dark))
 '(tool-bar-mode nil))
(custom-set-faces
 '(default ((t (:family "Verdana" :foundry "outline" :slant normal :weight normal :height 151 :width normal)))))


(setq ring-bell-function 'ignore)
(setq inhibit-splash-screen t)
(global-linum-mode 1)
(setq backup-directory-alist(quote(("." . "E:/.emacs_backup"))))
(tool-bar-mode 0)
(scroll-bar-mode 0)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
             
(setq python-insert-encoding-magic-comment nil)
(setq enh-python-add-encoding-comment-on-save nil)

(load-file "C:/Users/jing.jiang/.emacs.d/init.el")
(setq warning-minimum-log-level :emergency)
(setq package-check-signature nil)

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)

(setq python-indent-guess-indent-offset-verbose nil)
(setq python-indent-guess-indent-offset t)  

(custom-set-variables
 '(python-guess-indent nil)
 '(python-indent 2))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(add-hook 'python-mode-hook
          (function (lambda ()
                      (setq indent-tabs-mode nil
                            tab-width 2))))

(add-to-list 'auto-mode-alist '("m[M]akefile.*" . makefile-gmake-mode))
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(set-locale-environment "English")
(set-language-environment 'English)
(prefer-coding-system 'utf-8)
(set-file-name-coding-system 'gbk)
(set-buffer-file-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-16le)
(set-w32-system-coding-system 'utf-8)
