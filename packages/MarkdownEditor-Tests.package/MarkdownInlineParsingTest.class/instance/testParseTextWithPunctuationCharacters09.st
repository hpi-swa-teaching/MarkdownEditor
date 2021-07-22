tests - punctuation characters
testParseTextWithPunctuationCharacters09

	| expectedOutput output |
	output := parser parseInline: '"*"hello**'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '"*"hello**'}.
	
	self assert: expectedOutput equals: output