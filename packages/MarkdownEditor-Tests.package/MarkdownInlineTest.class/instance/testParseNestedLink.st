tests - links
testParseNestedLink
	
	| expectedOutput link output |
	output := parser parseInline: '[<squeak@hpi.de>](hpi.de)'.
	link := MarkdownLink newFrom: 'hpi.de'.
	link children add: (MarkdownAutolink newWith: #beEmail and: 'squeak@hpi.de').
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output