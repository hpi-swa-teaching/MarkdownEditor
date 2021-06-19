tests - punctuation characters
testParseTextWithPunctuationCharacters5

	| expectedOutput output str emph |
	output := parser parse: 'plain text-*(italic)*'.
	str := MarkdownString2 newFrom: 'plain text-'.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: '(italic)').
	expectedOutput := LinkedList newFrom: {str. emph}.
	self assert: expectedOutput equals: output