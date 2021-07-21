tests - nested emphasis
testParseEmphNested4
    
	| output expectedOutput emphBold emphItalic emphItalic2 |
	output := parser parseInline: '*foo **bar *baz* bim** bop*'.
	emphItalic := MarkdownItalic new.
	emphBold := MarkdownBold new.
	emphItalic2 := MarkdownItalic new.
	emphItalic2 children add: (MarkdownString newFrom: 'baz').
	emphBold children add: (MarkdownString newFrom: 'bar ');
		add: emphItalic2;
		add: (MarkdownString newFrom: ' bim').
	emphItalic children add: (MarkdownString newFrom: 'foo ');
		add: emphBold;
		add: (MarkdownString newFrom: ' bop').
	expectedOutput := MarkdownLinkedList newFrom: {emphItalic}.
	
	self assert: expectedOutput equals: output
