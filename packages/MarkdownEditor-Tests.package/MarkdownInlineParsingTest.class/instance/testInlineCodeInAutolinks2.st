tests - inline code
testInlineCodeInAutolinks2

	| expectedOutput output code str |
	output := parser parseInline: '`<http://foo.bar.`baz>`'.
	code := MarkdownCodeSpan new
		content: '<http://foo.bar.';
		fenceLength: 1;
		rawContent: '<http://foo.bar.'.
	str := MarkdownString newFrom: 'baz>`'.
	expectedOutput := MarkdownLinkedList newFrom: { code. str }.
	
	self assert: expectedOutput equals: output