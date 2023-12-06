((text) @injection.content
    (#not-has-ancestor? @injection.content "envoy")
    (#not-has-parent? @injection.content  "comment")
    (#set! injection.combined)
    (#set! injection.language php))

((text) @injection.content
    (#has-ancestor? @injection.content "envoy")
    (#set! injection.combined)
    (#set! injection.language zsh))

;Available for experimental split_parser see issue #5 
((php_only) @injection.content
   (#set! injection.language php_only))
((parameter) @injection.content
   (#set! injection.language php_only))
