as yet unclassified
testParseStrongEmph
	
	| output expectedOutput emph |
	output := parser parseInlineElementsFrom: '**hello**'.
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := OrderedCollection newFrom: {emph beClosed}.
	self assert: expectedOutput equals: output