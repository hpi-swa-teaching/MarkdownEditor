tests - inline code
testInlineCodeWithEmphasis2

	| expectedOutput output code |
	output := parser parseInline: '*test`*`' with: 1.
	code := MarkdownCodeSpan new
		code: '*';
		fenceLength: 1;
		rawContent: '*';
		startPosition: 6.
	expectedOutput := MarkdownLinkedList 
		newFrom: {MarkdownString newFrom: '*test' startingAt: 1. code}.
	
	self assert: expectedOutput equals: output