tests - inline code
testInlineCodeStrippingWhitspaces3

	| expectedOutput output code |
	output := parser parseInline: '` a`' with: 1.
	code := MarkdownCodeSpan new
		code: ' a';
		fenceLength: 1;
		rawContent: ' a';
		startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output