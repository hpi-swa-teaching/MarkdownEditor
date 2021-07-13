tests - inline code
testInlineCodeStrippingWhitspaces3

	| expectedOutput output code |
	output := parser parseInline: '` a`'.
	code := MarkdownCodeSpan new
		content: ' a';
		fenceLength: 1;
		rawContent: ' a'.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output