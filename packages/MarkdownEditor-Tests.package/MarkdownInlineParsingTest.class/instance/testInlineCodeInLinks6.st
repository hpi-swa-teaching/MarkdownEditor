tests - inline code
testInlineCodeInLinks6

	| expectedOutput output link |
	output := parser parseInline: '[a link](`/foo`)'.
	link := MarkdownLink newFrom: '`/foo`'.
	link startPosition: 1.
	link children add: (MarkdownString newFrom: 'a link' startingAt: 1).
	expectedOutput := MarkdownLinkedList newFrom: { link }.
	
	self assert: expectedOutput equals: output