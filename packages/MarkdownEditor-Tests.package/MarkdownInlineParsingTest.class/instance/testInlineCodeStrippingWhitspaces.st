tests - inline code
testInlineCodeStrippingWhitspaces

	| expectedOutput output code |
	output := parser parseInline: '` `` `'.
	code := MarkdownCodeSpan new
		content: '``';
		fenceLength: 1;
		rawContent: ' `` ';
		startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output