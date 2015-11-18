(global-font-lock-mode t)
(global-set-key "\C-xs" 'save-buffer)
(global-set-key "\C-xv" 'quoted-insert)
(global-set-key "\C-xg" 'goto-line)
(global-set-key "\C-xf" 'search-forward)
(global-set-key "\C-xc" 'compile)
(global-set-key "\C-xt" 'text-mode);
(global-set-key "\C-xr" 'replace-string);
(global-set-key "\C-xa" 'repeat-complex-command);
(global-set-key "\C-xm" 'manual-entry);
(global-set-key "\C-xw" 'what-line);
(global-set-key "\C-x\C-u" 'shell);
(global-set-key "\C-x\C-r" 'toggle-read-only);
(global-set-key "\C-t" 'kill-word);
(global-set-key "\C-p" 'previous-line);
(global-set-key "\C-u" 'backward-word);
(global-set-key "\C-o" 'forward-word);
(global-set-key "\C-h" 'backward-delete-char-untabify);
(global-set-key "\C-x\C-m" 'not-modified);
(setq make-backup-files 'nil);
(setq default-major-mode 'text-mode)
(setq text-mode-hook 'turn-on-auto-fill)
(set-default-font "-misc-fixed-medium-r-normal--15-140-*-*-c-*-*-1")
(setq auto-mode-alist (cons '("\\.cxx$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.hpp$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.tex$" . latex-mode) auto-mode-alist))

;;  Syntax highlighting

(global-font-lock-mode t)       
(setq font-lock-maximum-decoration t)


(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Prevent the cursor from blinking
(blink-cursor-mode 0)
;; Don't use messages that you don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
;; Don't let Emacs hurt your ears
(setq visible-bell t)

;; This is bound to f11 in Emacs 24.4
;;(toggle-frame-fullscreen) 
;; Who use the bar to scroll?

(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (menu-bar-mode 0)
      (scroll-bar-mode -1)))

(set-face-attribute 'default nil
		    :family "Menlo" :height 130 :weight 'normal)

(setq-default line-spacing 1)

; moking Vim cursor movements
(global-set-key (kbd "M-h") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "M-k") 'previous-line)
(global-set-key (kbd "M-j") 'next-line)

;; m-x load-file

