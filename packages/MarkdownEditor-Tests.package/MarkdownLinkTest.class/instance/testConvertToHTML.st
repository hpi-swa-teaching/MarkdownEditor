tests
testConvertToHTML

	| link html |
	
	link := MarkdownLink from: 1 to: 7.
	link content: 'Click hier'.
	link url: 'example.com'.
	html := link convertWith: MarkdownHtmlConverter new.
	self assert: html = '<a href="example.com">Click hier</a>'