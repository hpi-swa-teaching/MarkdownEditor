tests - punctuation characters
testParseTextWithPunctuationCharacters05

	| expectedOutput output str emph |
	output := parser parse: 'plain text-*(italic)*'.
	str := MarkdownString2 newFrom: 'plain text-'.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: '(italic)').
	expectedOutput := MarkdownLinkedList newFrom: {str. emph}.
	
	self assert: expectedOutput equals: output