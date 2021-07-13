tests - inline code
testInlineCodeInLinks7

	| expectedOutput output code str |
	output := parser parseInline: '[not a `link](/foo)`'.
	str := MarkdownString newFrom: '[not a '.
	code := MarkdownCodeSpan new
		content: 'link](/foo)';
		totalLength: 13.
	expectedOutput := MarkdownLinkedList newFrom: { str. code }.
	
	self assert: expectedOutput equals: output