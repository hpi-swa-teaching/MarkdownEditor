tests - punctuation characters
testParseTextWithPunctuationCharacters10

	| expectedOutput output emph |
	output := parser parseInline: '"*" hello*'.
	emph := MarkdownItalic new
		startPosition: 2.
	emph children add: (MarkdownString newFrom: '" hello' startingAt: 3).
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '"' startingAt: 1. emph}.
	
	self assert: expectedOutput equals: output