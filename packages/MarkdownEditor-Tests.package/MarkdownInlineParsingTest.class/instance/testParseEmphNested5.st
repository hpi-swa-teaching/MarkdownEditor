tests - nested emphasis
testParseEmphNested5
    
	| output expectedOutput emphItalic emphItalic2 link |
	output := parser parseInline: '*hello world [*this is a link*](hpi.de)*' with: 1.
	emphItalic := MarkdownItalic new
		startPosition: 1.
	emphItalic2 := MarkdownItalic new
		startPosition: 15.
	emphItalic2 children add: (MarkdownString newFrom: 'this is a link' startingAt: 16).
	link := MarkdownLink new.
	link path: 'hpi.de';
		startPosition: 14.
	link children add: emphItalic2.
	emphItalic children
		add: (MarkdownString newFrom: 'hello world ' startingAt: 2);
		add: link.
	expectedOutput := MarkdownLinkedList newFrom: {emphItalic}.
	
	self assert: expectedOutput equals: output
