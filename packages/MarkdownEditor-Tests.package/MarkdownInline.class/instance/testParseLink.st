as yet unclassified
testParseLink
	
	| parser output expectedOutput |
	parser := RealMarkdownParser new.
	output := parser parseInlineElementsFrom: 'Hello [hallo](https://hpi.de)'.
	expectedOutput := OrderedCollection newFrom: {MarkdownString2 newFrom: 'Hello '. MarkdownLink2 newFrom: '[hallo](https://hpi.de)'}.
	self assert: expectedOutput equals: output