tests - nested emphasis
testParseEmphNested6
    
	| output expectedOutput emphItalic |
    
	output := parser parse: '*foo _bar* baz_'.
    
	emphItalic := MarkdownItalic2 new.
	
	emphItalic children add: (MarkdownString2 newFrom: 'foo _bar').
	
	expectedOutput := LinkedList newFrom: {emphItalic. (MarkdownString2 newFrom: ' baz_')}.
	self assert: expectedOutput equals: output
