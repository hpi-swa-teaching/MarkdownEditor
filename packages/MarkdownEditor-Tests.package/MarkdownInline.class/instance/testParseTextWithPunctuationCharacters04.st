tests - punctuation characters
testParseTextWithPunctuationCharacters04

	| expectedOutput output |
	output := parser parse: 'say**"Hello World"**'.
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: 'say**"Hello World"**'.}.
	self assert: expectedOutput equals: output