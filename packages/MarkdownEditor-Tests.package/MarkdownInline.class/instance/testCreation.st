as yet unclassified
testCreation
	
	| parser output expectedOutput |
	parser := RealMarkdownParser new.
	output := parser parseInlineElementsFrom: 'Hello **World**'.
	expectedOutput := OrderedCollection newFrom: {MarkdownString2 newFrom: 'Hello '. MarkdownBold2 newFrom: '**World**'}.
	self assert: expectedOutput equals: output