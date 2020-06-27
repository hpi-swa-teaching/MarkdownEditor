export
convertToHTML

	| blocks htmlConverter html |
	Transcript open.
	self textMorph accept.
	htmlConverter := MarkdownHtmlConverter new.
	blocks := self blockTextStyler parse: self textMorph getText asString.
	html := htmlConverter convert: blocks with: self blockTextStyler styleSettings.
	
	Transcript show: html