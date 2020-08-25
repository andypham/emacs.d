;; macOS, Tmux and Emacs: Copy and Paste.
;; http://iancmacdonald.com/macos/emacs/tmux/2017/01/15/macOS-tmux-emacs-copy-past.html
(defun copy-from-osx ()
  "Use OSX clipboard to paste."
  (shell-command-to-string "reattach-to-user-namespace pbpaste"))

(defun paste-to-osx (text &optional push)
  "Add kill ring entries (TEXT) to OSX clipboard.  PUSH."
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "reattach-to-user-namespace" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq markdown-command "multimarkdown")
(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)
;; Enable backup files.
;;(setq make-backup-files t)
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #auto-save# files
(setq-default indent-tabs-mode nil)

;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))
(editorconfig-mode 1)

(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(require 'handlebars-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (if (equal web-mode-content-type "javascript")
                (web-mode-set-content-type "jsx")
              (message "now set to: %s" web-mode-content-type))))
(add-hook 'web-mode-hook
  (lambda ()
    (setq web-mode-attr-indent-offset 2)
    (setq web-mode-code-indent-offset 2)))


(add-hook 'go-mode-hook
  (lambda ()
    (setq tab-width 4)
    (setq indent-tabs-mode 1)))

(require 'eclim)
;;(setq eclimd-autostart t)

(defun my-java-mode-hook ()
  (eclim-mode t))

(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)

;;(add-hook 'java-mode-hook 'my-java-mode-hook)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(package-selected-packages
   (quote
    (yari robe ruby-compilation inf-ruby rspec-mode ruby-hash-syntax ruby-mode psci psc-ide purescript-mode flycheck-elm elm-test-runner elm-mode dhall-mode hindent intero haskell-mode company-anaconda anaconda-mode pip-requirements restclient httprepl haml-mode css-eldoc skewer-less sass-mode rainbow-mode tagedit org-pomodoro writeroom-mode org-cliplink grab-mac-link company-php smarty-mode php-mode add-node-modules-path skewer-mode js-comint prettier-js typescript-mode coffee-mode js2-mode json-mode erlang csv-mode markdown-mode textile-mode cmd-to-echo alert ibuffer-projectile magithub github-clone bug-reference-github yagist git-messenger git-commit magit-todos magit git-timemachine gitconfig-mode gitignore-mode git-blamed vc-darcs darcsum browse-at-remote whitespace-cleanup-mode guide-key highlight-escape-sequences whole-line-or-region move-dup page-break-lines multiple-cursors avy expand-region browse-kill-ring symbol-overlay rainbow-delimiters beacon mode-line-bell vlf list-unicode-display unfill mmm-mode default-text-scale session switch-window company-quickhelp company ivy-xref swiper projectile counsel ivy-historian ivy smex flycheck-color-mode-line flycheck ibuffer-vc anzu diff-hl diredfl disable-mouse dimmer color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized command-log-mode scratch diminish wgrep exec-path-from-shell fullframe seq)))
 '(session-use-package t nil (session)))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
