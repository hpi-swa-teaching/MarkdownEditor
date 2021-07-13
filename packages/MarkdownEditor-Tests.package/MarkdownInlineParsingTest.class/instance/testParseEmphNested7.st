tests - nested emphasis
testParseEmphNested7
    
	| output expectedOutput emphItalic emphStrong |
	output := parser parseInline: '*foo __bar *baz bim__ bam*'.
	emphItalic := MarkdownItalic new.
	emphStrong := MarkdownBold new.
	emphStrong children add: (MarkdownString newFrom: 'bar *baz bim').	
	emphItalic children
		add: (MarkdownString newFrom: 'foo ');
		add: emphStrong;
		add: (MarkdownString newFrom: ' bam').
	expectedOutput := MarkdownLinkedList newFrom: {emphItalic}.
	
	self assert: expectedOutput equals: output
