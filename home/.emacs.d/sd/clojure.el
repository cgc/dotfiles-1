(autoload 'clojure-mode "clojure-mode")
(add-hook 'clojure-mode-hook 'paredit-mode)

(eval-after-load 'clojure-mode
  '(progn
     (define-clojure-indent
       (defroutes 'defun)
       (routes 'defun)
       (describe 'defun)
       (at-media 'defun)
       (around 'defun)
       (it 'defun)
       (list 'defun)
       (cond 'defun)
       (:use nil)
       (:require nil)
       (:import nil)
       (GET 2)
       (POST 2)
       (PUT 2)
       (DELETE 2)
       (HEAD 2)
       (ANY 2)
       (context 1))))
