;; From susL's config

;; Tuareg - Ocaml mode
(add-to-list 'auto-mode-alist '("\\.ml[iylp]?" . tuareg-mode))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the Caml debugger" t)
(dolist (ext '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi"))
    (add-to-list 'completion-ignored-extensions ext))

(add-hook 'tuareg-mode-hook
    '(lambda ()
        (setq tuareg-in-indent 0)
                ; no indentation after 'in' keywords
        (setq tuareg-interactive-scroll-to-bottom-on-output t)
        (setq tuareg-interactive-program "/bin/ocaml")

        (setq whitespace-line-column 100)
        (setq whitespace-style
          '(face
            tabs spaces trailing lines space-before-tab newline
            indentation empty space-after-tab
            tab-mark newline-mark))
        (add-hook 'before-save-hook 'whitespace-cleanup nil t)
        (whitespace-mode 1)

        (font-lock-add-keywords nil '(("\\<\\(FIX\\|TODO\\|FIXME\\|HACK\\|REFACTOR\\):"
            1 font-lock-warning-face t)))
    ))
