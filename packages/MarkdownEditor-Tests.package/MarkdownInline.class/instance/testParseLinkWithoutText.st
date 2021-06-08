as yet unclassified
testParseLinkWithoutText
	
	| expectedOutput link |
	parser parseInlineElementsFrom: '[](hpi.de)'.
	link := MarkdownLink2 newFrom: 'hpi.de'.
	link children add: (MarkdownString2 newFrom: '').
	expectedOutput := OrderedCollection newFrom: {link}.
	self assert: expectedOutput equals: parser inlineContainer