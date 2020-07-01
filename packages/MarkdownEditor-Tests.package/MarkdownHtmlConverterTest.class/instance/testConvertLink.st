as yet unclassified
testConvertLink

	| link |
	
	link := MarkdownLink new content: 'Klick hier'.
	link url: 'example.com'.
	
	self assert: (MarkdownHtmlConverter new convertLink: link) = '<a href="example.com">Klick hier</a>'