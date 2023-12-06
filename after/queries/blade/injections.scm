((text) @injection.content
(#not-has-ancestor? @injection.content "envoy")
(#set! injection.combined)
(#set! injection.language php))

; could be bash or zsh
; or whatever tree-sitter grammar you have.
((text) @injection.content
(#set! injection.combined)
(#has-ancestor? @injection.content "envoy")
(#set! injection.language zsh))

; Available for experimental split_parser see issue #5 
; ((php_only) @injection.content
;    (#set! injection.language php_only))
; ((parameter) @injection.content
;    (#set! injection.language php_only))
