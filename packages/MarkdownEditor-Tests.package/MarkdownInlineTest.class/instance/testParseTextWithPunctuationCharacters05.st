tests - punctuation characters
testParseTextWithPunctuationCharacters05

	| expectedOutput output str emph |
	output := parser parseInline: 'plain text-*(italic)*'.
	str := MarkdownString newFrom: 'plain text-'.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: '(italic)').
	expectedOutput := MarkdownLinkedList newFrom: {str. emph}.
	
	self assert: expectedOutput equals: output