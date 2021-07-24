tests - nested emphasis
testParseEmphNested4
    
	| output expectedOutput emphBold emphItalic emphItalic2 |
	output := parser parseInline: '*foo **bar *baz* bim** bop*'.
	emphItalic := MarkdownItalic new
		startPosition: 1.
	emphBold := MarkdownBold new
		startPosition: 6.
	emphItalic2 := MarkdownItalic new
		startPosition: 12.
	emphItalic2 children add: (MarkdownString newFrom: 'baz' startingAt: 13).
	emphBold children add: (MarkdownString newFrom: 'bar ' startingAt: 8);
		add: emphItalic2;
		add: (MarkdownString newFrom: ' bim' startingAt: 17).
	emphItalic children add: (MarkdownString newFrom: 'foo ' startingAt: 2);
		add: emphBold;
		add: (MarkdownString newFrom: ' bop' startingAt: 23).
	expectedOutput := MarkdownLinkedList newFrom: {emphItalic}.
	
	self assert: expectedOutput equals: output
