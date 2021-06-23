tests - punctuation characters
testParseTextWithPunctuationCharacters10

	| expectedOutput output emph |
	output := parser parse: '"*" hello*'.
	
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: '" hello').
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString2 newFrom: '"'. emph}.
	
	self assert: expectedOutput equals: output