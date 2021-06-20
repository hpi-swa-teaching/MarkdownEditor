tests - punctuation characters
testParseTextWithPunctuationCharacters07

	| expectedOutput output |
	output := parser parse: '*(*plain text)'.
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: '*(*plain text)'}.
	self assert: expectedOutput equals: output