tests - punctuation characters
testParseTextWithPunctuationCharacters07

	| expectedOutput output |
	output := parser parseInline: '*(*plain text)'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '*(*plain text)'}.
	
	self assert: expectedOutput equals: output