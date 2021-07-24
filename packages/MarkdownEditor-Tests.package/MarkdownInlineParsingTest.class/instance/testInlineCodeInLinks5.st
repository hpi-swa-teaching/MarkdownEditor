tests - inline code
testInlineCodeInLinks5

	| expectedOutput output link str |
	output := parser parseInline: '[a link](`/foo)`'.
	link := MarkdownLink newFrom: '`/foo'.
	link startPosition: 1.
	link children add: (MarkdownString newFrom: 'a link' startingAt: 1).
	str := MarkdownString newFrom: '`' startingAt: 16.
	expectedOutput := MarkdownLinkedList newFrom: { link. str }.
	
	self assert: expectedOutput equals: output