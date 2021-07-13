tests - nested emphasis
testParseEmphNested6
    
	| output expectedOutput emphItalic |
	output := parser parseInline: '*foo _bar* baz_'.
	emphItalic := MarkdownItalic new.
	emphItalic children add: (MarkdownString newFrom: 'foo _bar').
	expectedOutput := MarkdownLinkedList newFrom: {emphItalic. (MarkdownString newFrom: ' baz_')}.
	
	self assert: expectedOutput equals: output
