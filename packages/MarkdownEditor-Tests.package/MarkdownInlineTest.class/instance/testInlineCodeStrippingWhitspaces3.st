tests - inline code
testInlineCodeStrippingWhitspaces3

	| expectedOutput output code |
	output := parser parseInline: '` a`'.
	code := MarkdownCodeSpan new
		content: ' a';
		totalLength: 4.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output