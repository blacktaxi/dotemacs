;; Appearance configuration

;; Font
(set-face-attribute 'default nil :font "Consolas-12")
(global-linum-mode t)

;; Colors
(load-theme 'misterioso)

;; Window number mode
(require 'window-number)
(autoload 'window-number-meta-mode "window-number"
  "A global minor mode that enables use of the M- prefix to select
windows, use `window-number-mode' to display the window numbers in
the mode-line."
  t)

(window-number-meta-mode 1)

;; 'Scrollbar' in modeline
;;(require 'sml-modeline)
;;(sml-modeline-mode 1)
(scroll-bar-mode 1)

;; Frame title format. Add the "Emacs" to the title so I can search for it 
;; by the window title with Switcher.
(setq frame-title-format '("" "%b @ Emacs " emacs-version))

