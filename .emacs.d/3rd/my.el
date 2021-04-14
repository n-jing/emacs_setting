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


;;优化注释功能
(defun qiang-comment-dwim-line (&optional arg)
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
(global-set-key "\M-;" 'qiang-comment-dwim-line)
