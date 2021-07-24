tests - inline code
testInlineCodeInLinks7

	| expectedOutput output code str |
	output := parser parseInline: '[not a `link](/foo)`'.
	str := MarkdownString newFrom: '[not a ' startingAt: 1.
	code := MarkdownCodeSpan new
		content: 'link](/foo)';
		fenceLength: 1;
		rawContent: 'link](/foo)';
		startPosition: 8.
	expectedOutput := MarkdownLinkedList newFrom: { str. code }.
	
	self assert: expectedOutput equals: output