tests - inline code
testInlineCodeInAutolinks

	| expectedOutput output |
	output := parser parseInline: '<http://foo.bar.`baz>`'.
	expectedOutput := MarkdownLinkedList 
		newFrom: {MarkdownAutolink newWith: #beNotEmail and: 'http://foo.bar.`baz'.
			MarkdownString newFrom: '`'}.
	
	self assert: expectedOutput equals: output