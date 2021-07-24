tests - nested emphasis
testParseEmphNested6
    
	| output expectedOutput emphItalic |
	output := parser parseInline: '*foo _bar* baz_'.
	emphItalic := MarkdownItalic new
		startPosition: 1.
	emphItalic children add: (MarkdownString newFrom: 'foo _bar' startingAt: 2).
	expectedOutput := MarkdownLinkedList newFrom: 
		 {emphItalic. (MarkdownString newFrom: ' baz_' startingAt: 11)}.
	
	self assert: expectedOutput equals: output
