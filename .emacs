
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inhibit-splash-screen t)
(global-linum-mode 1)
(setq backup-directory-alist(quote(("." . "/home/jing/.backups"))))
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; (set-language-environment "utf-8")
;; ;;(set-language-environment 'Chinese-GB)
;; (set-keyboard-coding-system 'euc-cn)
;; (set-clipboard-coding-system 'euc-cn)
;; (set-terminal-coding-system 'euc-cn)
;; (set-buffer-file-coding-system 'euc-cn)
;; (set-selection-coding-system 'euc-cn)
;; (prefer-coding-system 'euc-cn)
;; (setq default-process-coding-system 'euc-cn)
;; (setq-default pathname-coding-system 'euc-cn)



(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
             
(package-initialize)





(set-language-environment 'Chinese-GB)

(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-clipboard-coding-system 'utf-8)  
(setq ansi-color-for-comint-mode t)
(modify-coding-system-alist 'process "*" 'utf-8)  
(setq-default pathname-coding-system 'utf-8)  
(prefer-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))  
(setq locale-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8) 
(setq default-buffer-file-coding-system 'utf-8)  
(setq slime-net-coding-system 'utf-8-unix)



;;set transparent effect
(global-set-key [(f8)] 'loop-alpha)
(setq alpha-list '((100 100) (80 85)))
(defun loop-alpha ()
(interactive)
(let ((h (car alpha-list)))                ;; head value will set to
((lambda (a ab)
(set-frame-parameter (selected-frame) 'alpha (list a ab))
(add-to-list 'default-frame-alist (cons 'alpha (list a ab)))
) (car h) (car (cdr h)))
(setq alpha-list (cdr (append alpha-list (list h))))
)
)

(setq python-insert-encoding-magic-comment nil)
(setq enh-python-add-encoding-comment-on-save nil)

(load-file "~/.emacs.d/init.el")
(setq warning-minimum-log-level :emergency)
(setq package-check-signature nil)

(setq shell-file-name "/bin/bash")
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
