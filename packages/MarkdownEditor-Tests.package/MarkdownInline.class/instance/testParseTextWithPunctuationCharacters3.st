tests - punctuation characters
testParseTextWithPunctuationCharacters3

	| expectedOutput output str |
	output := parser parse: 'text*" Hello World*'.
	str := MarkdownString2 newFrom: 'text*" Hello World*'.
	expectedOutput := LinkedList newFrom: { str }.
	self assert: expectedOutput equals: output