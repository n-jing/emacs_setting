
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;theme and font setting;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
             
(load-file "C:/Users/jing.jiang/.emacs.d/init.el")
(setq warning-minimum-log-level :emergency)
(setq package-check-signature nil)

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)


(setq-default
 ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
 ;; possible. Set it to nil if you have no way to use HTTPS in your
 ;; environment, otherwise it is strongly recommended to let it set to t.
 ;; This variable has no effect if Emacs is launched with the parameter
 ;; `--insecure' which forces the value of this variable to nil.
 ;; (default t)
 dotspacemacs-elpa-https nil
 ;; Maximum allowed time in seconds to contact an ELPA repository.
 dotspacemacs-elpa-timeout 5 
 )



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;indent setting;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(setq-default indent-tabs-mode nil) ; tab 改为插入空格
(setq c-basic-offset 2) ; c c++ 缩进4个空格
(setq c-default-style "k&r"); 没有这个 { } 就会瞎搞
(setq default-tab-width 2)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;language setting;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
(put 'narrow-to-region 'disabled nil)
