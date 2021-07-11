tests - inline code
testInlineCodeStrippingWhitspaces3

	| expectedOutput output |
	output := parser parseInline: '` a`'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownCodeSpan newFrom: ' a'}.
	
	self assert: expectedOutput equals: output