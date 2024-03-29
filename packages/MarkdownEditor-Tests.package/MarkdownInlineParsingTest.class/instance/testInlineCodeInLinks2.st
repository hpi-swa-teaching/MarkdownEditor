tests - inline code
testInlineCodeInLinks2

	| expectedOutput output code link |
	output := parser parseInline: '[`code in a link`](/foo)' with: 1.
	link := MarkdownLink newFrom: '/foo'.
	link startPosition: 1.
	code := MarkdownCodeSpan new
		code: 'code in a link';
		fenceLength: 1;
		rawContent: 'code in a link';
		startPosition: 2.
	link children add: code.
	expectedOutput := MarkdownLinkedList newFrom: { link }.
	
	self assert: expectedOutput equals: output