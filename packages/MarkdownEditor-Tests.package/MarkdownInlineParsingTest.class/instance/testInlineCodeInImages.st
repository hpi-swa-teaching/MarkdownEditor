tests - inline code
testInlineCodeInImages

	| expectedOutput output code str str2 |
	output := parser parseInline: '![not a `image](/foo`)' with: 1.
	str := MarkdownString newFrom: '![not a ' startingAt: 1.
	code := MarkdownCodeSpan new
		code: 'image](/foo';
		fenceLength: 1;
		rawContent: 'image](/foo';
		startPosition: 9.
	str2 := MarkdownString newFrom: ')' startingAt: 22.
	expectedOutput := MarkdownLinkedList newFrom: { str. code. str2 }.
	
	self assert: expectedOutput equals: output