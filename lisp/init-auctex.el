;;; my personal configuration
;;------ get support for many of the LaTeX packages one will use in documents
(setq TeX-auto-save t)
(setq TeX-parse-self t)
;;------


;;------ make auctex to ask for a master file automatically for each new file
(setq-default TeX-master nil)
;;------


;;------ enable LaTeX Math mode by default
;; C-c ~ can toggle this math mode 
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; if this next option is on, just typing (, { or [ immediately adds the corresponding right ), } or ]
;; although I'm not sure about my syntex...
(setq LaTeX-electric-left-right-brace t)
;;------


;;------ enable RefTex mode with AUCTex LaTeX mode by default
;; M-x reftex-mode RET can toggle this mode
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t) ;; integrate RefTeX with AUCTeX
;;------


;;------ enable synctex
;; I'm not sure if this would work
(add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)
;;------


;;------ set some tex processor options
;; these codes are found on line 
(add-hook 'LaTeX-mode-hook
          (lambda ()
            ;; (setq TeX-engine 'xetex)    ;;use xelatex default 
            (setq TeX-show-compilation t)    ;; display compilation windows
            (TeX-global-PDF-mode t)    ;; PDF mode enable, not plain
            (setq TeX-save-query nil)
            (setq TeX-command-extra-options "-shell-escape")  ;; for mint package
          ))

;; some TeX-command-extra-options could be added at the bottom of the file
;; for example, add the following line to the list of local variables of the source file:
;; %%% TeX-command-extra-options: "-shell-escape"
;;------


;;------ add to response to the require in init.el
(provide 'init-auctex)
;;------
