tests - inline code
testInlineCodeInLinks3

	| expectedOutput output code str |
	output := parser parseInline: '[not a link]`(/foo)`' with: 1.
	str := MarkdownString newFrom: '[not a link]'.
	str startPosition: 1.
	code := MarkdownCodeSpan new
		content: '(/foo)';
		fenceLength: 1;
		rawContent: '(/foo)';
		startPosition: 13.
	expectedOutput := MarkdownLinkedList newFrom: { str. code }.
	
	self assert: expectedOutput equals: output