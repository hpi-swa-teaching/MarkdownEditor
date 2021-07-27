tests - punctuation characters
testParseTextWithPunctuationCharacters02

	| expectedOutput output emph |
	output := parser parseInline: '*" Hello World*' with: 1.
	emph := MarkdownItalic new
		startPosition: 1.
	emph children add: (MarkdownString newFrom: '" Hello World' startingAt: 2).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output