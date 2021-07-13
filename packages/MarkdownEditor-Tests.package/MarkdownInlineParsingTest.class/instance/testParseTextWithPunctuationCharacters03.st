tests - punctuation characters
testParseTextWithPunctuationCharacters03

	| expectedOutput output str |
	output := parser parseInline: 'text*" Hello World*'.
	str := MarkdownString newFrom: 'text*" Hello World*'.
	expectedOutput := MarkdownLinkedList newFrom: { str }.
	
	self assert: expectedOutput equals: output