tests - inline code
testInlineCodeStrippingWhitspaces

	| expectedOutput output |
	output := parser parseInline: '` `` `'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownCodeSpan newFrom: '``'}.
	
	self assert: expectedOutput equals: output