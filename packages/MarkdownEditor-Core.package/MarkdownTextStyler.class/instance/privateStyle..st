private
privateStyle: aText

	| text |
	text := (MarkdownBlockParser new) parse: aText asString.
	aText setString: text string setRuns: text runs