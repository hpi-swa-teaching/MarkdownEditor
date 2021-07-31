export
convertToHTML

	| htmlConverter html |
	self pluggableTextMorph accept.
	htmlConverter := MarkdownHtmlConverter new.
	html := htmlConverter convertToHtml: self textStyler document.
	MarkdownHtmlExportView openWith: html