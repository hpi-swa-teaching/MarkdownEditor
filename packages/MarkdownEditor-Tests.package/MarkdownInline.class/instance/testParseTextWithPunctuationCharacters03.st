tests - punctuation characters
testParseTextWithPunctuationCharacters03

	| expectedOutput output str |
	output := parser parse: 'text*" Hello World*'.
	
	str := MarkdownString2 newFrom: 'text*" Hello World*'.
	expectedOutput := MarkdownLinkedList newFrom: { str }.
	
	self assert: expectedOutput equals: output