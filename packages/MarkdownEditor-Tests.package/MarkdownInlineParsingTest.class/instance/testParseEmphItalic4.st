tests - emphasis
testParseEmphItalic4
	
	| output expectedOutput emph |
	output := parser parseInline: '*_*' with: 1.
	emph := MarkdownItalic new.
	emph startPosition: 1.
	emph children add: (MarkdownString newFrom: '_' startingAt: 2).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output