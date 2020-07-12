tests - html
testConvertToHTML

	| blockquote |
	
	blockquote := (MarkdownLine newFrom: '> In medias res', Character cr) asMarkdownBlock.
	self assert: (blockquote convertWith: MarkdownHtmlConverter new) = ('<blockquote>', Character cr, ' In medias res', Character cr, '</blockquote>', Character cr)