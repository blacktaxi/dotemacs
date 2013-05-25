;; Navigation

;; TODO Some of these get rebound to other stuff in different modes. ;(

;;;; File navigation
;;;;

;; Cursor-like navigation block on L, ', P and ; keys.
(global-set-key (kbd "M-p") 'previous-line)
(global-set-key (kbd "M-;") 'next-line) ;; rebound to comment-dwim
(global-set-key (kbd "M-l") 'backward-char)
(global-set-key (kbd "M-'") 'forward-char)
  
;; Faster vertical navigation inside a file
(global-set-key (kbd "M-[") 'scroll-down-command)
(global-set-key (kbd "M-]") 'scroll-up-command)

;;;; Buffer navigation and stuff
;;;;

;; Switching between buffers
(global-set-key (kbd "M--") 'previous-buffer)
(global-set-key (kbd "M-=") 'next-buffer) ;; rebound to dired-backup-diff

;; Buffer menu
(global-set-key (kbd "C-`") 'buffer-menu)
(global-set-key (kbd "C-<tab>") 'other-buffer)

(global-set-key (kbd "<C-f4>") 'kill-this-buffer)

;; Windows
(global-set-key (kbd "C-M-1") 'delete-other-windows)

;;;; Editing
;;;;

;; Commenting
(global-set-key (kbd "C-/") 'comment-dwim)

;; From susL 
;;   ;; Use 'M-<arrows>' to move between windows
;; (when (fboundp 'windmove-default-keybindings) (windmove-default-keybindings 'meta))
;; ;; Use 'S-C-<arrows>' to resize windows
;; (global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
;; (global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
;; (global-set-key (kbd "S-C-<down>") 'shrink-window)
;; (global-set-key (kbd "S-C-<up>") 'enlarge-window)
;; ;; Use 'C-c left’ and ‘C-c right' to undo/redo window configuration change
;; (when (fboundp 'winner-mode) (winner-mode 1))

;; ;; Use C-M-arrows to move/swap buffers around
;; (require 'buffer-move)
;; (global-set-key (kbd "<C-M-up>")     'buf-move-up)
;; (global-set-key (kbd "<C-M-down>")   'buf-move-down)
;; (global-set-key (kbd "<C-M-left>")   'buf-move-left)
;; (global-set-key (kbd "<C-M-right>")  'buf-move-right)
