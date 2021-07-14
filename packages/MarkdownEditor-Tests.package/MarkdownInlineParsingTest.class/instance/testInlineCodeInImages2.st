tests - inline code
testInlineCodeInImages2

	| expectedOutput output code image |
	output := parser parseInline: '![`code in an image`](/foo)'.
	image := MarkdownImage newFrom: '/foo'.
	code := MarkdownCodeSpan new
		content: 'code in an image';
		fenceLength: 1;
		rawContent: 'code in an image'.
	image children add: code.
	expectedOutput := MarkdownLinkedList newFrom: { image }.
	
	self assert: expectedOutput equals: output