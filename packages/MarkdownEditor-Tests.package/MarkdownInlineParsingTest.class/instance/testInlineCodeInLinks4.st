tests - inline code
testInlineCodeInLinks4

	| expectedOutput output code str |
	output := parser parseInline: '`[not a link`](/foo)'.
	code := MarkdownCodeSpan new
		content: '[not a link';
		totalLength: 13.
	str := MarkdownString newFrom: '](/foo)'.
	expectedOutput := MarkdownLinkedList newFrom: { code. str }.
	
	self assert: expectedOutput equals: output