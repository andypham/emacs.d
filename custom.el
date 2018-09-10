;; Enable backup files.
;;(setq make-backup-files t)
(setq make-backup-files nil) ; stop creating those backup~ files
(setq auto-save-default nil) ; stop creating those #auto-save# files
(setq-default indent-tabs-mode nil)

;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(require 'handlebars-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#657b83" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#fdf6e3"))
 '(custom-enabled-themes (quote (manoj-dark)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(fci-rule-color "#eee8d5")
 '(package-selected-packages
   (quote
    (tide yari yaml-mode yagist whole-line-or-region whitespace-cleanup-mode wgrep web-mode vc-darcs unfill undo-tree tidy textile-mode tagedit switch-window swift-mode stylus-mode sql-indent smex smarty-mode skewer-less session scss-mode scratch sass-mode ruby-hash-syntax robe rinari regex-tool redshank rainbow-mode rainbow-delimiters project-local-variables pip-requirements php-mode paredit-everywhere page-break-lines osx-location org-pomodoro org-mac-link org-mac-iCal org-fstree mwe-log-commands multiple-cursors move-dup mmm-mode markdown-mode magit-gh-pulls lua-mode lively less-css-mode json-mode js-comint ipretty idomenu ido-ubiquitous ibuffer-vc htmlize hl-sexp hippie-expand-slime highlight-symbol highlight-quoted highlight-escape-sequences hayoo guide-key go-mode gnuplot gitignore-mode github-clone github-browse-file gitconfig-mode git-timemachine git-messenger git-blame ghci-completion fullframe flycheck-package flycheck-hdevtools flycheck-haskell flycheck-elm flycheck-clojure fill-column-indicator expand-region exec-path-from-shell erlang elm-mode elisp-slime-nav elein editorconfig dsvn dockerfile-mode dired-sort dired+ diminish diff-hl default-text-scale darcsum csv-nav csv-mode css-eldoc crontab-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode cljsbuild-mode cl-lib-highlight bug-reference-github browse-kill-ring avy auto-compile anzu aggressive-indent adjust-parens ace-jump-mode ac-slime ac-js2 ac-inf-ruby ac-haskell-process ac-cider)))
 '(session-use-package t nil (session))
 '(standard-indent 4)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
