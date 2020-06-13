export
convertToHTML

	| blocks htmlConverter html |
	self textMorph accept.
	htmlConverter := MarkdownHtmlConverter new.
	blocks := self blockTextStyler parse: self textMorph getText asString.
	html := htmlConverter convert: blocks.
	
	Transcript open.
	Transcript show: html