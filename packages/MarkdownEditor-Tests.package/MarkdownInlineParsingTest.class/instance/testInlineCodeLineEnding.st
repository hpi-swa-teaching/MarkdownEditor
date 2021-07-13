tests - inline code
testInlineCodeLineEnding

	| expectedOutput output code |
	output := parser parseInline: '``', Character cr, 'test', Character cr, 'squeak', Character cr, '``'.
	code := MarkdownCodeSpan new
		content: 'test squeak';
		fenceLength: 2;
		rawContent: '', Character cr, 'test', Character cr, 'squeak', Character cr.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output