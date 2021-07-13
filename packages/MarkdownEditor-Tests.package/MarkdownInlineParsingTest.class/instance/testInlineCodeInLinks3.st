tests - inline code
testInlineCodeInLinks3

	| expectedOutput output code str |
	output := parser parseInline: '[not a link]`(/foo)`'.
	str := MarkdownString newFrom: '[not a link]'.
	code := MarkdownCodeSpan new
		content: '(/foo)';
		totalLength: 8.
	expectedOutput := MarkdownLinkedList newFrom: { str. code }.
	
	self assert: expectedOutput equals: output