tests - inline code
testInlineCodeInLinks6

	| expectedOutput output link |
	output := parser parseInline: '[a link](`/foo`)'.
	link := MarkdownLink newFrom: '`/foo`'.
	link children add: (MarkdownString newFrom: 'a link').
	expectedOutput := MarkdownLinkedList newFrom: { link }.
	
	self assert: expectedOutput equals: output