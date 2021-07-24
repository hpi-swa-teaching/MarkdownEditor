tests - punctuation characters
testParseTextWithPunctuationCharacters08

	| expectedOutput output emph emph2 |
	output := parser parseInline: '*(*italic text*)*'.
	emph :=  MarkdownItalic new
		startPosition: 1.
	emph2 :=  MarkdownItalic new
		startPosition: 3.
	emph2 children add: (MarkdownString newFrom: 'italic text' startingAt: 4).
	emph children
		add: (MarkdownString newFrom: '(' startingAt: 2);
		add: emph2;
		add: (MarkdownString newFrom: ')' startingAt: 16).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output