tests - links
testParseLinkWithOutUrlAndDescription
	
	| expectedOutput link |
	parser parseInlineElementsFrom: '[]()'.
	link := MarkdownLink2 newFrom: ''.
	link children add: (MarkdownString2 newFrom: '').
	expectedOutput := OrderedCollection newFrom: {link}.
	self assert: expectedOutput equals: parser inlineContainer