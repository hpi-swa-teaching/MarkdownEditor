tests - inline code
testInlineCodeInImages2

	| expectedOutput output code image |
	output := parser parseInline: '![`code in an image`](/foo)' with: 1.
	image := MarkdownImage newFrom: '/foo'.
	image startPosition: 1.
	code := MarkdownCodeSpan new
		code: 'code in an image';
		fenceLength: 1;
		rawContent: 'code in an image';
		startPosition: 3.
	image children add: code.
	expectedOutput := MarkdownLinkedList newFrom: { image }.
	
	self assert: expectedOutput equals: output