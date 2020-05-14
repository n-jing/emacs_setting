(package-initialize)
(setq package-check-signature nil)

(add-to-list 'auto-mode-alist '("\\.inc\\'" . c++-mode))
(setq warning-minimum-log-level :emergency)
(setq initial-scratch-message nil)
(setq inhibit-startup-screen t)
;;括号自动补全
(setq kill-whole-line t);在行首 C-k 时，同时删除末尾换行符
(electric-pair-mode t)
;;c-k 和m-k删除和复制一行
(defadvice kill-ring-save (before slickcopy activate compile)  
  (interactive  
   (if mark-active (list (region-beginning) (region-end))  
     (list (line-beginning-position)  
           (line-beginning-position 2)))))  
(defadvice kill-region (before slickcut activate compile)  
  (interactive  
   (if mark-active (list (region-beginning) (region-end))  
     (list (line-beginning-position)  
           (line-beginning-position 2)))))

;;保存文档光标位置
(setq-default save-place t)
(require 'saveplace)
(save-place-mode 1)                     ;emacs-25 以后才有


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


;;优化注释功能
(defun qiang-comment-dwim-line (&optional arg)
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
(global-set-key "\M-;" 'qiang-comment-dwim-line)


(setq-default indent-tabs-mode nil) ; tab 改为插入空格
(setq c-basic-offset 2) ; c c++ 缩进4个空格
(setq c-default-style "k&r"); 没有这个 { } 就会瞎搞
(setq default-tab-width 2)


(add-to-list 'auto-mode-alist '("\\.puml\\'" . plantuml-mode))
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
(setq plantuml-jar-path "～/.custom/plantuml.jar")
(add-to-list 'org-src-lang-modes '("plantuml" . plantuml))
(setq org-plantuml-jar-path
      (expand-file-name "~/.custom/plantuml.jar"))
