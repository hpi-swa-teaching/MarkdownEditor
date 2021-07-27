tests - inline code
testInlineCodeInAutolinks2

	| expectedOutput output code str |
	output := parser parseInline: '`<http://foo.bar.`baz>`' with: 1.
	code := MarkdownCodeSpan new
		content: '<http://foo.bar.';
		fenceLength: 1;
		rawContent: '<http://foo.bar.';
		startPosition: 1.
	str := MarkdownString newFrom: 'baz>`' startingAt: 19.
	expectedOutput := MarkdownLinkedList newFrom: { code. str }.
	
	self assert: expectedOutput equals: output