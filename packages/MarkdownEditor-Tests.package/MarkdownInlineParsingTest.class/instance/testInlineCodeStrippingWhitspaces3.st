tests - inline code
testInlineCodeStrippingWhitspaces3

	| expectedOutput output code |
	output := parser parseInline: '` a`'.
	code := MarkdownCodeSpan new
		content: ' a';
		fenceLength: 1;
		rawContent: ' a';
		startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output