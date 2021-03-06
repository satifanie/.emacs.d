;;; Package.el

(require 'compile)
(defun require-package (package &optional min-version)
  "Ask elpa to install given PACKAGE."
  (unless (package-installed-p package min-version)
    (package-install package)))

;; When switching between Emacs 23 and 24, we always use the bundled package.el in Emacs 24
(let ((package-el-site-lisp-dir (expand-file-name "~/.emacs.d/site-lisp/package")))
  (when (and (file-directory-p package-el-site-lisp-dir)
             (> emacs-major-version 23))
    (message "Removing local package.el from load-path to avoid shadowing bundled version")
    (setq load-path (remove package-el-site-lisp-dir load-path))))

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(when (< emacs-major-version 24)
  (require-package 'color-theme))


;;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (end-of-buffer)
    (eval-print-last-sexp)))


(setq el-get-sources
      '((:name ansi-color :type emacswiki)
        ;; (:name gtags
        ;;        :type http
        ;;        :url "https://raw.github.com/mbriggs/gtags.el/master/gtags.el"
        ;;        :features gtags)
        (:name etags-select :type emacswiki)
        (:name joseph-file-util :type emacswiki :features joseph-file-util)
        (:name find-file-in-project
               :type http
               :url "https://raw.github.com/dburger/find-file-in-project/master/find-file-in-project.el"
               :features find-file-in-project)
        (:name expand-region
               :type git
               :url "https://github.com/mbriggs/expand-region.el.git")
        (:name deferred
               :type git
               :url "https://github.com/kiwanami/emacs-deferred")
        ;; (:name popup-gtags
        ;;        :type git
        ;;        :url "https://github.com/koko1000ban/emacs-popup-gtags")
        (:name pretty-mode
               :type http
               :url "https://raw.github.com/emacsmirror/pretty-mode/master/pretty-mode.el"
               :features pretty-mode)
        (:name eproject
               :type git
               :url "https://github.com/jrockway/eproject")
        (:name cycle-buffer
               :type http
               :url "https://raw.github.com/emacsmirror/cycle-buffer/master/cycle-buffer.el"
               :features cycle-buffer)
        (:name dired-plus
               :type http
               :url "https://raw.github.com/emacsmirror/dired-plus/master/dired+.el")
        (:name fuzzy-find-in-project
               :type git
               :url "https://github.com/justinweiss/fuzzy-find-in-project"
               :features fuzzy-find-in-project)
        (:name rvm
               :type git
               :url "http://github.com/djwhitt/rvm.el.git"
               :load "rvm.el"
               :compile ("rvm.el")
               :after (lambda() (rvm-use-default)))
        (:name js3-mode
               :type git
               :url "https://github.com/thomblake/js3-mode.git")
        ;; (:name mooz-js2-mode
        ;;        :type git
        ;;        :url "https://github.com/mbriggs/js2-mode.git")
        (:name shoulda-test
               :type http
               :url "https://raw.github.com/mbriggs/shoulda-test/master/shoulda-test.el"
               :features shoulda-test)
        (:name solarized
               :type git
               :url "https://github.com/sellout/emacs-color-theme-solarized.git")
               ;; :url "git@github.com:mbriggs/emacs-color-theme-solarized.git")
        (:name rspec-mode
               :type git
               :url "git@github.com:mbriggs/rspec-mode.git")
        (:name smartchr
               :type http
               :url "https://raw.github.com/imakado/emacs-smartchr/master/smartchr.el"
               :features smartchr)
        (:name rails-test-toggler
               :type http
               :url "https://raw.github.com/mbriggs/rails-test-toggler/master/rails-test-toggler.el"
               :features rails-test-toggler)
        (:name volatile-highlights
               :type http
               :url "https://raw.github.com/k-talo/volatile-highlights.el/master/volatile-highlights.el")
        (:name evil-surround
               :type http
               :url "https://raw.github.com/timcharper/evil-surround/master/surround.el")
        (:name escreen
               :type http
               :url "http://www.splode.com/~friedman/software/emacs-lisp/src/escreen.el")
        (:name lua-mode
               :type git
               :url "https://github.com/immerrr/lua-mode.git")
        (:name ac-dabbrev
               :type http
               :url "https://raw.github.com/emacsmirror/ac-dabbrev/master/ac-dabbrev.el")
        (:name ack-and-a-half
               :type git
               :url "https://github.com/jhelwig/ack-and-a-half.git")
        (:name rhtml
               :type git
               :url "git@github.com:mbriggs/rhtml.git"
               :features rhtml-mode)))

;;; get what we can from elpa
(require-package 'css-mode)
(require-package 'ruby-compilation)
(require-package 'inf-ruby)
(require-package 'anything)
(require-package 'anything-config)
(require-package 'anything-match-plugin)
(require-package 'clojure-mode)
(require-package 'clojure-test-mode)
(require-package 'crontab-mode)
(require-package 'coffee-mode)
(require-package 'color-theme)
(require-package 'csv-mode)
(require-package 'diminish)
(require-package 'durendal)
;; (require-package 'etags-select)
(require-package 'elein)
(require-package 'flymake-coffee)
(require-package 'flymake-ruby)
(require-package 'flymake-cursor)
(require-package 'flymake-haml)
(require-package 'flymake-sass)
(require-package 'flymake-shell)
(require-package 'http-twiddle)
(require-package 'json)
(require-package 'js-comint)
(require-package 'linum-off)
(require-package 'markdown-mode)
(require-package 'maxframe)
(require-package 'move-text)
(require-package 'marmalade)
(require-package 'mic-paren)
(require-package 'mode-compile)
(require-package 'org)
(require-package 'paredit)
(require-package 'rinari)
(require-package 'ruby-end)
(require-package 'ruby-block)
(require-package 'rainbow-delimiters)
(require-package 'rainbow-mode)
(require-package 'sass-mode)
(require-package 'scss-mode)
(require-package 'scratch)
(require-package 'smex)
(require-package 'yari)
(require-package 'yaml-mode)

;;; el-get the rest
(setq my-packages
      (append
       '(autopair
         ansi-color
         ack-and-a-half
         auto-complete
         auto-complete-css
         auto-complete-ruby
         ac-slime
         ac-dabbrev
         cycle-buffer
         dired-plus
         deferred
         diminish
         lua-mode
         el-expectations
         eproject
         evil
         evil-surround
         expand-region
         etags-select
         fuzzy-find-in-project
         joseph-file-util
         ;; gtags
         gist
         magit
         ;; mooz-js2-mode
         js3-mode
         midje-mode
         haml-mode
         nxhtml
         pretty-mode
         prolog-el
         ;; popup-gtags
         rails-test-toggler
         rhtml
         shoulda-test
         solarized
         rspec-mode
         textile-mode
         volatile-highlights
         xml-parse
         wanderlust
         highlight-symbol
         rvm)
       (mapcar 'el-get-source-name el-get-sources)))


(el-get 'sync my-packages)

(provide 'init-packages)
