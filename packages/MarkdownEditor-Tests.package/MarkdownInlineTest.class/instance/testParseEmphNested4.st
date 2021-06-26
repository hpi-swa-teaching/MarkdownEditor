tests - nested emphasis
testParseEmphNested4
    
	| output expectedOutput emphBold emphItalic emphItalic2 |
	output := parser parse: '*foo **bar *baz* bim** bop*'.
	emphItalic := MarkdownItalic2 new.
	emphBold := MarkdownBold2 new.
	emphItalic2 := MarkdownItalic2 new.
	emphItalic2 children add: (MarkdownString2 newFrom: 'baz').
	emphBold children add: (MarkdownString2 newFrom: 'bar ');
		add: emphItalic2;
		add: (MarkdownString2 newFrom: ' bim').
	emphItalic children add: (MarkdownString2 newFrom: 'foo ');
		add: emphBold;
		add: (MarkdownString2 newFrom: ' bop').
	expectedOutput := MarkdownLinkedList newFrom: {emphItalic}.
	
	self assert: expectedOutput equals: output
