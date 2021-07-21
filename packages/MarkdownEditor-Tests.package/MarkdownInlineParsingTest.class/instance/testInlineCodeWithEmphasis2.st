tests - inline code
testInlineCodeWithEmphasis2

	| expectedOutput output code |
	output := parser parseInline: '*test`*`'.
	code := MarkdownCodeSpan new
		content: '*';
		fenceLength: 1;
		rawContent: '*'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '*test'. code}.
	
	self assert: expectedOutput equals: output