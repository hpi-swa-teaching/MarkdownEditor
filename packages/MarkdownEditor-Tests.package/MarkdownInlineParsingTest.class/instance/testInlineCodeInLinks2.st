tests - inline code
testInlineCodeInLinks2

	| expectedOutput output code link |
	output := parser parseInline: '[`code in a link`](/foo)'.
	link := MarkdownLink newFrom: '/foo'.
	code := MarkdownCodeSpan new
		content: 'code in a link';
		totalLength: 16.
	link children add: code.
	expectedOutput := MarkdownLinkedList newFrom: { link }.
	
	self assert: expectedOutput equals: output