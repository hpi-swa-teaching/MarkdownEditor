tests - punctuation characters
testParseTextWithPunctuationCharacters02

	| expectedOutput output emph |
	output := parser parseInline: '*" Hello World*'.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: '" Hello World').
	expectedOutput := MarkdownLinkedList newFrom: { emph }.
	
	self assert: expectedOutput equals: output