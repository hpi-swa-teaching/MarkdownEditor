tests - emphasis
testParseStrongEmph
	
	| output expectedOutput emph |
	output := parser parseInlineElementsFrom: '**hello**'.
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := OrderedCollection newFrom: {emph}.
	self assert: expectedOutput equals: output