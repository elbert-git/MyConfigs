; -------Package initialisation-------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)


;; -------Evil mode stuff-------
;;just making sure tab is working
;;(setq evil-want-C-i-jump nil)
;; turn evil mode on
(require 'evil)
(evil-mode 1)

;;remapping keychords
(require 'key-chord)
(key-chord-mode 1) ; turn on key-chord-mode
(key-chord-define evil-insert-state-map "ii" 'evil-normal-state) ;; ii to escape insert 
(key-chord-define evil-normal-state-map "ss" 'save-buffer) ;; ss to save buffer in normal mode


;; -------ORGMODE STUFF-------
;; disable line wrapping in org files
(add-hook 'org-mode-hook '(lambda () (visual-line-mode )))

;;use orgmode bullets				      
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; turn on languages for source blocks
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (python . t)
   (lisp . t)
   ))

;; -------company mode stuff-------
;; use M-x company-mode

;; enable auto complete anywhere
(add-hook 'after-init-hook 'global-company-mode)

;;quicken auto complete prompt delay
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)


;; -------csharp mode-------
(defun my-csharp-mode-hook ()
  ;; enable the stuff you want for C# here
  ;;(electric-pair-mode 1)       ;; Emacs 24
  (electric-pair-local-mode 1) ;; Emacs 25
  )
(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)


;; -------recent files-------
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


;; -------make scrolling smoother-------
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;;disable truncate line for smoother scrolling
(set-default 'truncate-lines t)


;; -------dashboard items-------
(require 'dashboard)
(dashboard-setup-startup-hook)

;; Set the title
(setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
;; Set the banner
(setq dashboard-startup-banner 'logo)
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.png" which displays whatever image you would prefer

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)

;;dashboad items
(setq dashboard-items '((recents  . 10)
                        (bookmarks . 5)
                        ))


;; -------custom function-------
;;function to open config file
(
 defun emacs-config ()
  (interactive)
  (
   find-file "~/.emacs"
  )
)

;; -------program created configs-------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "24714e2cb4a9d6ec1335de295966906474fdb668429549416ed8636196cb1441" default))
 '(display-line-numbers 'relative)
 '(electric-indent-mode t)
 '(electric-layout-mode t)
 '(electric-pair-mode t)
 '(electric-pair-text-pairs '((34 . 34) (8216 . 8217) (8220 . 8221) (40 . 41)))
 '(menu-bar-mode nil)
 '(org-agenda-files '("~/Documents/Notes/OrgNotes/ElispsNotes.org"))
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(dashboard babel csharp-mode doom-themes centaur-tabs figlet company org-agenda-property org-bullets evil dracula-theme))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
