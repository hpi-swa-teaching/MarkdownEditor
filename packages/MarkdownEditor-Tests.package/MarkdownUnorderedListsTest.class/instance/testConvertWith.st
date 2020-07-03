test - extandable
testConvertWith

	 | list html |

	list := (MarkdownLine newFrom: '- abc') asMarkdownBlock.
	html := list convertWith: MarkdownHtmlConverter new.
	self assert: html = ('<ul>', Character cr, '<li>abc</li>', Character cr, '</ul>', Character cr)