tests - inline code
testInlineCodeInLinks

	| expectedOutput output code str str2 |
	output := parser parseInline: '[not a `link](/foo`)'.
	str := MarkdownString newFrom: '[not a '.
	code := MarkdownCodeSpan new
		content: 'link](/foo';
		totalLength: 12.
	str2 := MarkdownString newFrom: ')'.
	expectedOutput := MarkdownLinkedList newFrom: {str. code. str2}.
	
	self assert: expectedOutput equals: output