tests - punctuation characters
testParseTextWithPunctuationCharacters06

	| expectedOutput output str emph emph2 |
	output := parser parseInline: 'plain text-***(italic and bold)***'.
	str := MarkdownString newFrom: 'plain text-'.
	emph := MarkdownItalic new.
	emph2 := MarkdownBold new.
	emph2 children add: (MarkdownString newFrom: '(italic and bold)').
	emph children add: emph2.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph}.
	
	self assert: expectedOutput equals: output