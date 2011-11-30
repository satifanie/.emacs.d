;; -*- coding: utf-8 -*-
(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(require 'init-pre-package-variables)
(require 'init-packages)
(require 'init-ansi-color)
(require 'init-rhtml)
(require 'init-crontab)
(require 'init-css)
(require 'init-csv)
(require 'init-dired)
(require 'init-flymake)
(require 'init-haml)
(require 'init-ido)
(require 'init-maxframe)
(require 'init-org)
(require 'init-paredit)
(require 'init-rinari)
(require 'init-evil)
(require 'init-rainbow-delims)
(require 'init-ack)
(require 'init-highlight-parens)
(require 'init-shoulda)
(require 'init-textmate)
(require 'init-rspec)
(require 'init-autocomplete)
(require 'init-anything)
(require 'init-ruby)
(require 'init-sass)
(require 'init-markdown)
(require 'init-moustache)
(require 'init-yaml)
(require 'init-ruby-block)
(require 'init-ruby-end)
(require 'init-linum)
(require 'init-escreen)
(require 'init-eproject)
(require 'init-js)
(require 'init-lua)
(require 'init-git-blame)

(require 'my-defuns)
(require 'my-keymaps)
(require 'my-emacs-settings)

(require 'hexcolors)

(require 'server)
(unless (server-running-p)
  (server-start))

(setq custom-file "~/.emacs.d/my-custom-variables.el")
(load custom-file)

(maybe-maximize-frame)
