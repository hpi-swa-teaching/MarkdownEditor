as yet unclassified
testParsePlainText

	| expectedOutput |
	parser parseInlineElementsFrom: 'Hello World!'.
	expectedOutput := OrderedCollection newFrom: {MarkdownString2 newFrom: 'Hello World!'.}.
	self assert: expectedOutput equals: parser inlineContainer