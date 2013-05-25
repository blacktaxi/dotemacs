(require 'cl)

;; Mac OS compatibility
(add-to-list 'load-path "~/.emacs.d/eis")

;; Package management
(setq marmalade-server "http://marmalade-repo.org"
      custom-file (expand-file-name "~/.emacs.d/custom.el"))

(when (not (require 'package nil t))
  (require 'package "package-23.el"))

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives 
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (null package-archive-contents)
  (package-refresh-contents))

;; My packages
(defvar my-packages '(
  starter-kit 
  window-number sml-modeline

  ;; modes
  clojure-mode 
  haskell-mode 
  ;tuareg 
  scala-mode 
  sml-mode
  lua-mode 
  python-mode
  markdown-mode 
  yaml-mode
  fsharp-mode
))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(desktop-save-mode 1)

;; (require 'popwin)
;; (setq display-buffer-function 'popwin:display-buffer)




