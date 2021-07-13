tests - punctuation characters
testParseTextWithPunctuationCharacters10

	| expectedOutput output emph |
	output := parser parseInline: '"*" hello*'.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: '" hello').
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '"'. emph}.
	
	self assert: expectedOutput equals: output