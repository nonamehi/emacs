

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(display-time-mode t)
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load "info")
(load "msb")
;;(global-linum-mode 1) ;; always show line numbers
;;(setq linum-format "%d| ") ;; set format
;;(setq-default fill-column 80)

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
(defun fastopen ()
  "get current line as fine name and open it"
  (interactive)
  (let* ((p1 (line-beginning-position))
         (p2 (line-end-position))
         (myfilename (buffer-substring-no-properties p1 p2)))
    (find-file (substitute-env-vars myfilename))
    )
)
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
(global-set-key [mouse-3] 'mouse-buffer-menu)

(defun resizeframe (d)
  "resize frame, 1:left,2:right"
  (interactive)
  (if (equal d "left")
      (set-frame-width nil (- (frame-text-cols) 10))
      (set-frame-width nil (+ (frame-text-cols) 10))
      )
  )
(defun resizeframeleft ()
  "resize frame left"
  (interactive)
  (resizeframe "left"))
(defun resizeframeright ()
  "resize frame right"
  (interactive)
  (resizeframe "right"))

(global-set-key (kbd "<s-left>") 'resizeframeleft)
(global-set-key (kbd "<s-right>") 'resizeframeright)

(menu-bar-mode -1)
(tool-bar-mode -1)
(global-font-lock-mode t)
(setq make-backup-files nil)
(setq display-time-24hr-format t)
(setq display-time-day-and-data nil)
(display-time)

(set-foreground-color "white")
(set-background-color "Gray22")
(set-mouse-color "yellow")
(set-cursor-color "red")
 ;; custom-set-faces was added by custom
 ;; if you edit it by hand,you could mess it up, so be careful
 ;; your init file should contain only one such instance
 ;; if there is more than one, they won't work right.
 '(font-lock-comment-face((t (:foreground "OrangeRed"))) t))

(add-to-list 'load-path "~/.emacs.d/plugins")
;;-----------------------------
;;verilog mode
;;-----------------------------
(add-to-list 'load-path "~/.emacs.d/verilog-mode.el")
(setq auto-mode-alist
	  (cons '("\\.\\(sv\\|svh\\)\\'" . verilog-mode)
		auto-mode-alist))

;;-----------------------------
;;nxml mode
;;-----------------------------
(add-to-list 'load-path "~/.emacs.d/nxml-mode-20041004-master/rng-auto.el")
(setq auto-mode-alist
      (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\)\\'" . nxml-mode)
	    auto-mode-alist))
;;(setq default-directory "~/")
(setq track-eol t)
(unify-8859-on-decoding-mode)

(setq c-basic-offset 4)
(setq c-default-style "linux")
(setq default-tab-width 4)
(setq indent-tabs-mode nil)
;;-----------------------------
;;Auto complete
;;-----------------------------
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)
(setq ac-auto-start t)  
(setq ac-quick-help-delay 0.2)  
(define-key ac-mode-map  [(control tab)] 'auto-complete)  
(defun my-ac-config ()  
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))  
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)  
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)  
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)  
  (add-hook 'css-mode-hook 'ac-css-mode-setup)  
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)  
  (global-auto-complete-mode t))  
(defun my-ac-cc-mode-setup ()  
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))  
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)  
;; ac-source-gtags  
(my-ac-config)  
(setq ac-fuzzy-enable t)

;;alt-x cua-mode//M-x
;;ctrl-enter    
;;alt-w : copy  //M-w
;;ctrl-y: paste

;;M-x cua-mode
;;move to start position , ctrl enter, move to end position
;;M-w copy
