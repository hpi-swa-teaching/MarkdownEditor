tests - inline code
testInlineCodeInLinks5

	| expectedOutput output link str |
	output := parser parseInline: '[a link](`/foo)`'.
	link := MarkdownLink newFrom: '`/foo'.
	link children add: (MarkdownString newFrom: 'a link').
	str := MarkdownString newFrom: '`'.
	expectedOutput := MarkdownLinkedList newFrom: { link. str }.
	
	self assert: expectedOutput equals: output