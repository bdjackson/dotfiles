(custom-set-variables
 ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
 ;; Your init file should contain only one such instance.
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(current-language-environment "English")
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock))
 '(show-paren-mode t nil (paren))
 ;'(ps-font-size 10)
)
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )

;(global-set-key [S-iso-lefttab] 'dabbrev-expand)
;(global-set-key [S-iso-tab] 'dabbrev-expand)
;(global-set-key [backtab] 'dabbrev-expand)
;(global-set-key [C-tab] 'dabbrev-expand)
;(global-set-key [M-tab] 'dabbrev-expand)

(defun indent-or-expand (arg)
  "Either indent according to mode, or expand the word preceding point."
  (interactive "*P")
  (if (and
       (or (bobp) (= ?w (char-syntax (char-before))))
       (or (eobp) (not (= ?w (char-syntax (char-after))))))
      (dabbrev-expand arg)
    (indent-according-to-mode)))

(defun my-tab-fix ()
  (local-set-key [tab] 'indent-or-expand))
 
(add-hook 'c-mode-common-hook   'my-tab-fix)
(add-hook 'sh-mode-hook         'my-tab-fix)
(add-hook 'py-mode-hook         'my-tab-fix)
(add-hook 'emacs-lisp-mode-hook 'my-tab-fix)
;; more mode hooks, yada yada, etc ...

;; double line separator 
;;(defun double-line ())
;;  "HELLO WORLD")
;; (define-key global-map [(control l) (control l)] 'double-line)
;;(define-key global-map [( l) (control l)] 'atl-switch-src)

; Map C-c C-v to the following function
(define-key global-map [(control c) (control v)] 'atl-switch-src)

; Switches between .h and .cxx files
(defun atl-switch-src ()
  (interactive)
  (setq filename buffer-file-name)
  (setq path (split-string filename "/"))
  (if (not (string-equal (car path) ""))
      (setq path (cons "" path)))
  (setq len (length path))
  (setq pkg (nth (- len 3) path))
  
  (if (string-match "\\.h" filename)
      (progn
        (setcar (nthcdr (- len 2) path) "src")
        (setq tmppath (mapconcat 'identity path "/"))
        (string-match "\\.h" tmppath)
        (setq hpath (replace-match ".cxx" nil nil tmppath))))
  
  (if (string-match "\\.cxx" filename)
      (progn
        (setcar (nthcdr (- len 2) path) pkg)
        (setq tmppath (mapconcat 'identity path "/"))
        (string-match "\\.cxx" tmppath)
        (setq hpath (replace-match ".h" nil nil tmppath))))
  
  (find-file hpath))
 
(global-set-key "\C-l" 'goto-line)
(set-default-font "fixed")
