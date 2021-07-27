tests - punctuation characters
testParseTextWithPunctuationCharacters07

	| expectedOutput output |
	output := parser parseInline: '*(*plain text)' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '*(*plain text)' startingAt: 1}.
	
	self assert: expectedOutput equals: output