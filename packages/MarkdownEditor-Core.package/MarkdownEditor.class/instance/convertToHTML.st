export
convertToHTML

	| blocks htmlConverter html |
	htmlConverter := MarkdownHtmlConverter new.
	blocks := self blockTextStyler parse: self textMorph getText asString.
	html := htmlConverter convert: blocks.
	
	Transcript show: html.