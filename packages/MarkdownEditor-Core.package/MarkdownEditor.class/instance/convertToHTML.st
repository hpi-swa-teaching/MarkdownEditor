export
convertToHTML

	| htmlConverter html document |
	self textMorph accept.
	htmlConverter := MarkdownHtmlConverter new.
	"blocks := self blockTextStyler parse: self textMorph getText asString.
	html := htmlConverter convert: blocks with: self blockTextStyler styleSettings."
	
	document := MarkdownParser new parse: self textMorph getText asString.
	html := htmlConverter convertToHtml: document.
	
	MarkdownHtmlExportView openWith: html.