tests - inline code
testInlineCodeWithEmphasis

	| expectedOutput output code |
	output := parser parseInline: '`te*s*t`'.
	code := MarkdownCodeSpan new
		content: 'te*s*t';
		totalLength: 8.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output