tests - nested emphasis
testParseEmphNested5
    
	| output expectedOutput emphItalic emphItalic2 link |
	output := parser parseInline: '*hello world [*this is a link*](hpi.de)*'.
	emphItalic := MarkdownItalic new.
	emphItalic2 := MarkdownItalic new.
	emphItalic2 children add: (MarkdownString newFrom: 'this is a link').
	link := MarkdownLink new.
	link path: 'hpi.de'.
	link children add: emphItalic2.
	emphItalic children
		add: (MarkdownString newFrom: 'hello world ');
		add: link.
	expectedOutput := MarkdownLinkedList newFrom: {emphItalic}.
	
	self assert: expectedOutput equals: output
