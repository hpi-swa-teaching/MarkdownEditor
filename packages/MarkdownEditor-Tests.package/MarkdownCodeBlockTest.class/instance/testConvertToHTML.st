tests - html
testConvertToHTML

	| codeblock html |
	
	codeblock := (MarkdownLine newFrom: '```', Character cr) asMarkdownBlock.
	codeblock append: (MarkdownLine newFrom: 'example', Character cr).
	codeblock append: (MarkdownLine newFrom: '    ^ 3 * 4', Character cr).
	codeblock append: (MarkdownLine newFrom:  '```').
	html := codeblock convertWith: MarkdownHtmlConverter new.
	self assert: html = ('<code>', Character cr, '	example', Character cr, '	    ^ 3 * 4', Character cr, '</code>', Character cr)