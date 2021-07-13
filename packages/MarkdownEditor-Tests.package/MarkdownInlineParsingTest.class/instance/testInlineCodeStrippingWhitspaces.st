tests - inline code
testInlineCodeStrippingWhitspaces

	| expectedOutput output code |
	output := parser parseInline: '` `` `'.
	code := MarkdownCodeSpan new
		content: '``';
		totalLength: 6.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output