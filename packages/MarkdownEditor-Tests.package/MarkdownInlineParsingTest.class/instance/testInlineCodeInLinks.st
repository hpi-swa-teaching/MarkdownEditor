tests - inline code
testInlineCodeInLinks

	| expectedOutput output code str str2 |
	output := parser parseInline: '[not a `link](/foo`)' with: 1.
	str := MarkdownString newFrom: '[not a ' startingAt: 1.
	code := MarkdownCodeSpan new
		code: 'link](/foo';
		fenceLength: 1;
		rawContent: 'link](/foo';
		startPosition: 8.
	str2 := MarkdownString newFrom: ')' startingAt: 20.
	expectedOutput := MarkdownLinkedList newFrom: {str. code. str2}.
	
	self assert: expectedOutput equals: output