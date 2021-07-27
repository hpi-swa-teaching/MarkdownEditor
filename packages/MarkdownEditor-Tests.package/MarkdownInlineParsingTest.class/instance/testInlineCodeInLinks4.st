tests - inline code
testInlineCodeInLinks4

	| expectedOutput output code str |
	output := parser parseInline: '`[not a link`](/foo)' with: 1.
	code := MarkdownCodeSpan new
		content: '[not a link';
		fenceLength: 1;
		rawContent: '[not a link';
		startPosition: 1.
	str := MarkdownString newFrom: '](/foo)' startingAt: 14.
	expectedOutput := MarkdownLinkedList newFrom: { code. str }.
	
	self assert: expectedOutput equals: output