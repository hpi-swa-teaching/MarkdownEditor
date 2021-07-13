tests - punctuation characters
testParseTextWithPunctuationCharacters02

	| expectedOutput output emph |
	output := parser parseInline: '*" Hello World*'.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: '" Hello World').
	expectedOutput := MarkdownLinkedList newFrom: { emph }.
	
	self assert: expectedOutput equals: output