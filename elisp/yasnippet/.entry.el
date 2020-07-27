(setq yasnippet-config-dir (concat root-config-dir "/elisp/yasnippet"))
(add-to-list 'load-path yasnippet-config-dir)
(require 'yasnippet)
(yas-global-mode 1)
