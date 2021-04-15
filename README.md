# emacs_setting

## Win Emacs Setting
1. default font is  '(default ((t (:family "Verdana" :foundry "outline" :slant normal :weight normal :height 151 :width normal))))
2. specific backup directory in line 19((setq backup-directory-alist(quote(("." . "E:/.emacs_backup")))))
3. specific the .emacs.d directoy in line 43((load-file "C:/Users/jing.jiang/.emacs.d/init.el"))
4. ```ctrl+x n n``` is shortcut for narrow-to-region, ```ctrl+x n w``` is shortcut for expaion.
5. guess-offset calculates indent automaticly and is useful when reading code written by other people.
6. buf-move-right(left) for swap buffer.
7. set indent in init.el, it will not work in .emacs file.
8. indent setting, [please refer to](http://blog.lujun9972.win/emacs-document/blog/2018/08/17/emacs%E7%BC%A9%E8%BF%9B%E7%BB%88%E6%9E%81%E6%8C%87%E5%8D%97-(%E5%88%B6%E8%A1%A8%E7%AC%A6%E5%92%8C%E7%A9%BA%E6%A0%BC)/index.html).
