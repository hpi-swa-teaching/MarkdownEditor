tests - punctuation characters
testParseTextWithPunctuationCharacters05

	| expectedOutput output str emph |
	output := parser parseInline: 'plain text-*(italic)*'.
	str := MarkdownString newFrom: 'plain text-' startingAt: 1.
	emph := MarkdownItalic new
		startPosition: 12.
	emph children add: (MarkdownString newFrom: '(italic)' startingAt: 13).
	expectedOutput := MarkdownLinkedList newFrom: {str. emph}.
	
	self assert: expectedOutput equals: output