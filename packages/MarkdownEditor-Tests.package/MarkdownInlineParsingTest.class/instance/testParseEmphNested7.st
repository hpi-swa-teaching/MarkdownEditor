tests - nested emphasis
testParseEmphNested7
    
	| output expectedOutput emphItalic emphStrong |
	output := parser parseInline: '*foo __bar *baz bim__ bam*' with: 1.
	emphItalic := MarkdownItalic new
		startPosition: 1.
	emphStrong := MarkdownBold new
		startPosition: 6.
	emphStrong children add: (MarkdownString newFrom: 'bar *baz bim' startingAt: 8).	
	emphItalic children
		add: (MarkdownString newFrom: 'foo ' startingAt: 2);
		add: emphStrong;
		add: (MarkdownString newFrom: ' bam' startingAt: 22).
	expectedOutput := MarkdownLinkedList newFrom: {emphItalic}.
	
	self assert: expectedOutput equals: output
