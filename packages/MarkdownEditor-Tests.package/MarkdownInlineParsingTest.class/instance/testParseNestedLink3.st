tests - links
testParseNestedLink3
	
	| expectedOutput link output autolink |
	output := parser parseInline: '[<squeak@hpi.de>](hpi.de)' with: 1.
	link := MarkdownLink newFrom: 'hpi.de'.
	link startPosition: 1.
	autolink := MarkdownAutolink newWith: #beEmail and: 'squeak@hpi.de'.
	autolink startPosition: 2.
	link children add: (autolink).
	expectedOutput := MarkdownLinkedList newFrom: {link}.
	
	self assert: expectedOutput equals: output