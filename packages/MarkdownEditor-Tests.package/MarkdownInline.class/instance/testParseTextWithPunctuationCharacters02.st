tests - punctuation characters
testParseTextWithPunctuationCharacters02

	| expectedOutput output emph |
	output := parser parse: '*" Hello World*'.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: '" Hello World').
	expectedOutput := LinkedList newFrom: { emph }.
	self assert: expectedOutput equals: output