tests - punctuation characters
testParseTextWithPunctuationCharacters09

	| expectedOutput output |
	output := parser parse: '"*"hello**'.
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: '"*"hello**'}.
	self assert: expectedOutput equals: output