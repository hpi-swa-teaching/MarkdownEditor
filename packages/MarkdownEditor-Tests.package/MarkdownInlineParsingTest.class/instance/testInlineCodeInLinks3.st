tests - inline code
testInlineCodeInLinks3

	| expectedOutput output code str |
	output := parser parseInline: '[not a link]`(/foo)`'.
	str := MarkdownString newFrom: '[not a link]'.
	code := MarkdownCodeSpan new
		content: '(/foo)';
		fenceLength: 1;
		rawContent: '(/foo)'.
	expectedOutput := MarkdownLinkedList newFrom: { str. code }.
	
	self assert: expectedOutput equals: output