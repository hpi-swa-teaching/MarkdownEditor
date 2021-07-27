tests - inline code
testInlineCodeInAutolinks

	| expectedOutput output autolink |
	output := parser parseInline: '<http://foo.bar.`baz>`' with: 1.
	autolink := MarkdownAutolink newWith: #beNotEmail and: 'http://foo.bar.`baz'.
	autolink startPosition: 1.
	expectedOutput := MarkdownLinkedList 
		newFrom: {autolink.
			MarkdownString newFrom: '`' startingAt: 22}.
	
	self assert: expectedOutput equals: output