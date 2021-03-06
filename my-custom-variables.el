(defvar my-global-externs '("it" "loadFixtures" "expect" "describe" "beforeEach" "spyOn" "jasmine"
                            "$" "$j" "Mustache" "jQuery" "_" "qcloud" "Nulogy" "qc" "Backbone" "JST"
                            "afterEach"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-modes (quote (emacs-lisp-mode lisp-interaction-mode c-mode cc-mode c++-mode java-mode perl-mode cperl-mode python-mode ruby-mode ecmascript-mode javascript-mode js2-mode js3-mode php-mode css-mode sass-mode scss-mode nxml-mode makefile-mode sh-mode fortran-mode f90-mode ada-mode xml-mode sgml-mode)))
 '(js2-allow-keywords-as-property-names nil)
 '(js2-always-indent-assigned-expr-in-decls-p nil)
 '(js2-auto-indent-p t)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil)
 '(js2-consistent-level-indent-inner-bracket-p t)
 '(js2-enter-indents-newline t)
 '(js2-global-externs my-global-externs)
 '(js2-highlight-level 3)
 '(js2-indent-on-enter-key t)
 '(js2-mirror-mode nil)
 '(js2-strict-missing-semi-warning nil)
 '(js3-global-externs my-global-externs)
 '(mumamo-chunk-coloring 1)
 '(scss-compile-at-save nil)
 '(rng-auto-validate-flag nil)
 '(tags-case-fold-search nil))

  ;; name    sRGB      Gen RGB   degraded  ANSI(Solarized terminal)
  ;; '((base03  "#002b36" "#042028" "#1c1c1c" "#7f7f7f")
  ;;   (base02  "#073642" "#0a2832" "#262626" "#000000")
  ;;   (base01  "#586e75" "#465a61" "#4e4e4e" "#00ff00")
  ;;   (base00  "#657b83" "#52676f" "#585858" "#ffff00")
  ;;   (base0   "#839496" "#708183" "#808080" "#5c5cff")
  ;;   (base1   "#93a1a1" "#81908f" "#8a8a8a" "#00ffff")
  ;;   (base2   "#EAE2CB" "#e9e2cb" "#d7d7af" "#e5e5e5")
  ;;   (base3   "#fdf6e3" "#fcf4dc" "#ffffd7" "#ffffff")
  ;;   (yellow  "#b58900" "#a57705" "#af8700" "#cdcd00")
  ;;   (orange  "#cb4b16" "#bd3612" "#d75f00" "#ff0000")
  ;;   (red     "#dc322f" "#c60007" "#af0000" "#cd0000")
  ;;   (magenta "#d33682" "#c61b6e" "#af005f" "#cd00cd")
  ;;   (violet  "#6c71c4" "#5859b7" "#5f5faf" "#ff00ff")
  ;;   (blue    "#268bd2" "#2075c7" "#0087ff" "#0000ee")
  ;;   (cyan    "#2aa198" "#259185" "#00afaf" "#00cdcd")
  ;;   (green   "#859900" "#728a05" "#5f8700" "#00cd00"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anything-header ((((class color)) (:background "#93a1a1" :foreground "#fdf6e3"))))
 '(clojure-test-error-face ((((class color) (background light)) (:underline "#b58900"))))
 '(clojure-test-failure-face ((((class color) (background light)) (:underline "#dc322f"))))
 '(clojure-test-success-face ((((class color) (background light)) (:background "#859900" :foreground "#fdf6e3"))))
 '(erb-face ((((class color) (min-colors 88) (background light)) (:background "#fdf6e3"))))
 '(flymake-errline ((((class color)) (:underline "#dc322f"))))
 '(flymake-warnline ((((class color)) (:underline "#268bd2"))))
 '(font-lock-function-name-face ((t (:background "#657b83" :foreground "#fdf6e3" :weight bold :inverse-video t))))
 '(hl-paren-face ((t (:weight bold))) t)
 '(isearch ((((class color)) (:background "#b58900" :underline "#b58900" :bold t :foreground "#fdf6e3"))))
 '(js2-error-face ((((class color) (background light)) (:foreground "#dc322f"))))
 '(js2-external-variable-face ((t (:foreground "#cb4b16"))))
 '(js2-function-param-face ((t (:foreground "#859900"))))
 '(lazy-highlight ((((class color)) (:background "#268bd2" :foreground "#002b36" :bold t))))
 '(magit-branch ((((class color)) (:background "#93a1a1" :foreground "#fdf6e3"))))
 '(magit-diff-add ((((class color)) (:foreground "#859900"))))
 '(magit-diff-del ((((class color)) (:foreground "#dc322f"))))
 '(magit-section-title ((((class color)) (:background "#93a1a1" :foreground "#fdf6e3"))))
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background light)) nil)))
 '(mumamo-border-face-in ((t (:inherit font-lock-preprocessor-face :weight bold))))
 '(mumamo-border-face-out ((t (:inherit font-lock-preprocessor-face :weight bold))))
 '(rainbow-delimiters-depth-1-face ((((class color)) (:foreground "#dc322f"))))
 '(rainbow-delimiters-depth-2-face ((((class color)) (:foreground "#b58900"))))
 '(rainbow-delimiters-depth-3-face ((((class color)) (:foreground "#cb4b16"))))
 '(rainbow-delimiters-depth-4-face ((((class color)) (:foreground "#d33682"))))
 '(rainbow-delimiters-depth-5-face ((((class color)) (:foreground "#6c71c4"))))
 '(rainbow-delimiters-depth-6-face ((((class color)) (:foreground "#268bd2"))))
 '(rainbow-delimiters-depth-7-face ((((class color)) (:foreground "#2aa198"))))
 '(rainbow-delimiters-depth-8-face ((((class color)) (:foreground "#859900"))))
 '(rainbow-delimiters-depth-9-face ((((class color)) (:foreground "#002b36"))))
 '(trailing-whitespace ((t (:background "#c7c0a9" :foreground "#EAE2CB" :inverse-video t))))
 '(vhl/default-face ((t (:background "#F3EEDE")))))
