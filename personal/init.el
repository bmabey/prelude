(prelude-require-packages '(window-numbering flatland-theme ag
                                             evil-leader evil-surround))

(tool-bar-mode -1)
(setq ns-auto-hide-menu-bar t)
(setq ns-use-native-fullscreen nil)

(require 'evil-leader)
(global-evil-leader-mode)

(require 'window-numbering)
(window-numbering-mode 1)

(global-set-key (kbd "s-0") 'select-window-0)
(global-set-key (kbd "s-1") 'select-window-1)
(global-set-key (kbd "s-2") 'select-window-2)
(global-set-key (kbd "s-3") 'select-window-3)
(global-set-key (kbd "s-4") 'select-window-4)
(global-set-key (kbd "s-5") 'select-window-5)
(global-set-key (kbd "s-6") 'select-window-6)
(global-set-key (kbd "s-7") 'select-window-7)
(global-set-key (kbd "s-8") 'select-window-8)
(global-set-key (kbd "s-9") 'select-window-9)



(evil-leader/set-key
 ;;"a" 'ag-project
 "a" 'projectile-ag
 "f" 'projectile-find-file
 "W" 'toggle-frame-split)


;; (loop for (mode . state) in '((inferior-emacs-lisp-mode . insert)
;;                               ;; (nrepl-mode . insert)
;;                               ;; (pylookup-mode . emacs)
;;                               ;; (comint-mode . normal)
;;                               ;; (shell-mode . insert)
;;                               ;; (git-commit-mode . insert)
;;                               ;; (git-rebase-mode . emacs)
;;                               ;; (term-mode . emacs)
;;                               ;; (help-mode . emacs)
;;                               ;; (helm-grep-mode . emacs)
;;                               ;; (grep-mode . emacs)
;;                               ;; (bc-menu-mode . emacs)
;;                               ;; ;; (magit-branch-manager-mode . emacs)
;;                               ;; (dired-mode . emacs)
;;                               (error-mode . emacs)
;;                               (interactive-haskell-mode . emacs)
;;                               ;;(wdired-mode . normal)
;;                               )
;;       do (evil-set-initial-state mode state))


(global-set-key (kbd "s-t") 'projectile-find-file)
(global-set-key (kbd "s-B") 'projectile-recentf)
(global-set-key (kbd "s-b") 'ido-switch-buffer)

(add-hook 'vc-annotate-mode-hook
          (lambda ()
            (evil-define-key 'normal vc-annotate-mode-map "a" 'vc-annotate-revision-previous-to-line)
            (evil-define-key 'normal vc-annotate-mode-map "d" 'vc-annotate-show-diff-revision-at-line)
            (evil-define-key 'normal vc-annotate-mode-map "D" 'vc-annotate-show-changeset-diff-revision-at-line)
            (evil-define-key 'normal vc-annotate-mode-map "f" 'vc-annotate-find-revision-at-line)
            (evil-define-key 'normal vc-annotate-mode-map "J" 'vc-annotate-revision-at-line)
            (evil-define-key 'normal vc-annotate-mode-map "L" 'vc-annotate-show-log-revision-at-line)
            (evil-define-key 'normal vc-annotate-mode-map "n" 'vc-annotate-next-revision)
            (evil-define-key 'normal vc-annotate-mode-map "p" 'vc-annotate-prev-revision)
            (evil-define-key 'normal vc-annotate-mode-map "w" 'vc-annotate-working-revision)
            (evil-define-key 'normal vc-annotate-mode-map "v" 'vc-annotate-toggle-annotation-visibility)))




(load-theme 'flatland)


(global-set-key (kbd "s-;") 'comment-dwim)
(global-set-key (kbd "s-/") 'comment-dwim)

(server-start)
