
(setq common-config-dir (concat root-config-dir "/elisp/common"))
 
(add-to-list 'load-path common-config-dir)
(require 'cl-lib)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; load color-theme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path (concat common-config-dir "/color-theme"))
(require 'color-theme)
(color-theme-initialize)
;;(setq color-theme-is-global t)
;;(color-theme-xp)

;;;;;;;;;;;;;;;;;;;;;;;
;; custom set variable
;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(display-time-mode t)
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(blick-cursor-mode nil)
 '(column-number-mode t)
 '(delete-key-deletes-forward t)
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil)
 '(make-backup-files nil)
 '(menu-bar-mode 0)
 '(mouse-yank-at-point t)
 '(tool-bar-mode 0)
 '(visible-bell t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


;; chinese input method
;; refer to https://github.com/tumashu/chinese-pyim
;; M-x package-install RET chinese-pyim RET
;;
;;(require 'chinese-pyim)
;;(require 'chinese-pyim-basedict)
;;(chinese-pyim-basedict-enable)
;;(setq default-input-method "chinese-pyim")
;;(global-set-key (kbd "C-\\") 'toggle-input-method)


(load "info")
(load "msb")
;;(global-linum-mode 1) ;; always show line numbers
;;(setq linum-format "%d| ") ;; set format
;;(setq-default fill-column 80)

;;(set-default-font "微软雅黑-20") 
;;(set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-20-*-*-*-m-0-iso10646-1")
(global-set-key "\C-z" 'undo)
(global-set-key "\C-o" 'find-file)
(global-set-key "\C-s" 'save-buffer)
(global-set-key "\C-p" 'pwd)
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)
(shell)
(global-set-key [f2] 'shell)
(define-key global-map [f3] 'isearch-forward)
(define-key isearch-mode-map [f3] 'isearch-repeat-forward)
(define-key global-map [C-f3] 'isearch-backward)
(define-key isearch-mode-map [C-f3] 'isearch-repeat-backward)
(global-set-key [C-f4] 'kill-this-buffer)
;;fast open file from current line
;;(defun fastopen ()
;;  "get current line as fine name and open it"
;;  (interactive)
;;  (let* ((p1 (line-beginning-position))
;;         (p2 (line-end-position))
;;         (myfilename (buffer-substring-no-properties p1 p2)))
;;    (find-file (substitute-env-vars myfilename))
;;    )
;;)
(global-set-key [f4] 'fastopen)
(global-set-key [f5] 'goto-line)
(global-set-key [f6] 'other-window)
(global-set-key [C-f6] 'switch-to-buffer)
(global-set-key [S-f6] 'buffer-menu)
(global-set-key [f7] 'comint-previous-matching-input-from-input)
(global-set-key [S-f7] 'comint-next-matching-input-from-input)
(global-set-key [f9] 'query-replace)
(global-set-key [C-f9] 'query-replace-regexp)
(global-set-key [S-f9] 'query-replace-reg-t)
(global-set-key [f10] 'delete-window)
(global-set-key [f11] 'split-window-vertically)
(global-set-key [f12] 'split-window-horizontally)
;;(global-set-key [mouse-3] 'mouse-buffer-menu)
;;
;;(defun resizeframe (d)
;;  "resize frame, 1:left,2:right"
;;  (interactive)
;;  (if (equal d "left")
;;      (set-frame-width nil (- (frame-text-cols) 10))
;;      (set-frame-width nil (+ (frame-text-cols) 10))
;;      )
;;  )
;;(defun resizeframeleft ()
;;  "resize frame left"
;;  (interactive)
;;  (resizeframe "left"))
;;(defun resizeframeright ()
;;  "resize frame right"
;;  (interactive)
;;  (resizeframe "right"))
;;
;;(global-set-key (kbd "<s-left>") 'resizeframeleft)
;;(global-set-key (kbd "<s-right>") 'resizeframeright)

(global-font-lock-mode t)
(setq make-backup-files nil)
(setq display-time-24hr-format t)
(setq display-time-day-and-data nil)
(display-time)

(set-foreground-color "white")
(set-background-color "Gray22")
(set-mouse-color "yellow")
(set-cursor-color "red")
(custom-set-faces
 ;; custom-set-faces was added by custom
 ;; if you edit it by hand,you could mess it up, so be careful
 ;; your init file should contain only one such instance
 ;; if there is more than one, they won't work right.
 '(font-lock-comment-face((t (:foreground "OrangeRed"))) t))


;; load exec-path-from-shell
;; about this please refer https://github.com/purcell/exec-path-from-shell
;;(require 'exec-path-from-shell)
;;(when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))

;; load auto-complete
;;load-file (concat common-config-dir "/auto-complete/.entry.el"))
