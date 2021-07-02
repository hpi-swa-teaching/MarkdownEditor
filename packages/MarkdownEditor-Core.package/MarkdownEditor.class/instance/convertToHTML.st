export
convertToHTML

	| htmlConverter html |
	self textMorph accept.
	htmlConverter := MarkdownHtmlConverter new.
	html := htmlConverter convertToHtml: self textStyler document.
	MarkdownHtmlExportView openWith: html