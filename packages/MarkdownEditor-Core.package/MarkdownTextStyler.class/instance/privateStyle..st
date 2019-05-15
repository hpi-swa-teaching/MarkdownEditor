private
privateStyle: aText

	| text |
	text := (MarkdownBlockParser new) parse: aText asString.
	aText runs: text runs
