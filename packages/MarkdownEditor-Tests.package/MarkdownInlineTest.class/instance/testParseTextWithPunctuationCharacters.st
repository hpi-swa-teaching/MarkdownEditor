tests - punctuation characters
testParseTextWithPunctuationCharacters

	| expectedOutput output |
	output := parser parse: 'say*"Hello World"*'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString2 newFrom: 'say*"Hello World"*'.}.
	
	self assert: expectedOutput equals: output