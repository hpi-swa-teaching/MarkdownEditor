tests - inline code
testInlineCodeLineEnding

	| expectedOutput output |
	output := parser parseInline: '``', Character cr, 'test', Character cr, 'squeak', Character cr, '``'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownCodeSpan newFrom: 'test squeak'}.
	
	self assert: expectedOutput equals: output