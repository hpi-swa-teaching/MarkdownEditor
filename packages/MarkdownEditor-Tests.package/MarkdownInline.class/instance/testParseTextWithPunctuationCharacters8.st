tests - punctuation characters
testParseTextWithPunctuationCharacters8

	| expectedOutput output emph |
	output := parser parse: '*(*italic text*)*'.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: '(italic text)').
	expectedOutput := LinkedList newFrom: {emph}.
	self assert: expectedOutput equals: output