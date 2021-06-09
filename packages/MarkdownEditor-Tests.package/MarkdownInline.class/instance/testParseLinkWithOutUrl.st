tests - links
testParseLinkWithOutUrl
	
	| expectedOutput link |
	parser parseInlineElementsFrom: '[hello world]()'.
	link := MarkdownLink2 newFrom: ''.
	link children add: (MarkdownString2 newFrom: 'hello world').
	expectedOutput := OrderedCollection newFrom: {link}.
	self assert: expectedOutput equals: parser inlineContainer