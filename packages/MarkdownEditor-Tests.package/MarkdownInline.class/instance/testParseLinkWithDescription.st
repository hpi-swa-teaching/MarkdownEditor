as yet unclassified
testParseLinkWithDescription
	
	| expectedOutput link |
	parser parseInlineElementsFrom: '[hello world](hpi.de)'.
	link := MarkdownLink2 newFrom: 'hpi.de'.
	link children add: (MarkdownString2 newFrom: 'hello world').
	expectedOutput := OrderedCollection newFrom: {link}.
	self assert: expectedOutput equals: parser inlineContainer