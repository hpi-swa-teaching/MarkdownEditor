tests - inline code
testInlineCodeLineEnding3

	| expectedOutput output code |
	output := parser parseInline: '``', Character cr, '     test   ', Character cr, 'squeak', Character cr, '``'.
	code := MarkdownCodeSpan new
		content: 'test    squeak';
		totalLength: 25.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output