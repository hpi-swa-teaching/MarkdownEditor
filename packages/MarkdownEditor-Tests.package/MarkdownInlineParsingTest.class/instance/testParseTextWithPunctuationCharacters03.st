tests - punctuation characters
testParseTextWithPunctuationCharacters03

	| expectedOutput output str |
	output := parser parseInline: 'text*" Hello World*' with: 1.
	str := MarkdownString newFrom: 'text*" Hello World*' startingAt: 1.
	expectedOutput := MarkdownLinkedList newFrom: {str}.
	
	self assert: expectedOutput equals: output