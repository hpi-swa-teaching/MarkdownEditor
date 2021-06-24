tests - punctuation characters
testParseTextWithPunctuationCharacters06

	| expectedOutput output str emph emph2 |
	output := parser parse: 'plain text-***(italic and bold)***'.
	
	str := MarkdownString2 newFrom: 'plain text-'.
	emph := MarkdownItalic2 new.
	emph2 := MarkdownBold2 new.
	emph2 children add: (MarkdownString2 newFrom: '(italic and bold)').
	emph children add: emph2.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph}.
	
	self assert: expectedOutput equals: output