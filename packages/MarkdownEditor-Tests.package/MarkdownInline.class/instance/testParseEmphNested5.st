tests - nested emphasis
testParseEmphNested5
    
	| output expectedOutput emphItalic emphItalic2 link |
    
	output := parser parse: '*hello world [*this is a link*](hpi.de)*'.
    
	emphItalic := MarkdownItalic2 new.
	emphItalic2 := MarkdownItalic2 new.
	
	emphItalic2 children add: (MarkdownString2 newFrom: 'this is a link').
	link := MarkdownLink2 new.
	link path: 'hpi.de'.
	link children add: emphItalic2.
	
	emphItalic children add: (MarkdownString2 newFrom: 'hello world ');
		add: link.
	
	expectedOutput := MarkdownLinkedList newFrom: {emphItalic}.
	self assert: expectedOutput equals: output
