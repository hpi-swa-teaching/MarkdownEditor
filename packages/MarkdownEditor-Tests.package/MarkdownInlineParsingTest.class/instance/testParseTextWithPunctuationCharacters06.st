tests - punctuation characters
testParseTextWithPunctuationCharacters06

	| expectedOutput output str emph emph2 |
	output := parser parseInline: 'plain text-***(italic and bold)***'.
	str := MarkdownString newFrom: 'plain text-' startingAt: 1.
	emph := MarkdownItalic new
		startPosition: 12.
	emph2 := MarkdownBold new
		startPosition: 13.
	emph2 children add: (MarkdownString newFrom: '(italic and bold)' startingAt: 15).
	emph children add: emph2.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph}.
	
	self assert: expectedOutput equals: output