tests - inline code
testInlineCodeWithEmphasis

	| expectedOutput output code |
	output := parser parseInline: '`te*s*t`' with: 1.
	code := MarkdownCodeSpan new
		content: 'te*s*t';
		fenceLength: 1;
		rawContent: 'te*s*t';
		startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output