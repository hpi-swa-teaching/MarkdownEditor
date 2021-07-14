tests - inline code
testInlineCodeInImages

	| expectedOutput output code str str2 |
	output := parser parseInline: '![not a `image](/foo`)'.
	str := MarkdownString newFrom: '![not a '.
	code := MarkdownCodeSpan new
		content: 'image](/foo';
		fenceLength: 1;
		rawContent: 'image](/foo'.
	str2 := MarkdownString newFrom: ')'.
	expectedOutput := MarkdownLinkedList newFrom: {str. code. str2}.
	
	self assert: expectedOutput equals: output