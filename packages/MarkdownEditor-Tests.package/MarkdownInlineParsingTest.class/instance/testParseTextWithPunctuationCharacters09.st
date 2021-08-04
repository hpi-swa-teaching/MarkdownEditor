tests - punctuation characters
testParseTextWithPunctuationCharacters09

	| expectedOutput output |
	output := parser parseInline: '"*"hello**' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '"*"hello**' startingAt: 1}.
	
	self assert: expectedOutput equals: output