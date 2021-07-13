tests - punctuation characters
testParseTextWithPunctuationCharacters08

	| expectedOutput output emph emph2 |
	output := parser parseInline: '*(*italic text*)*'.
	emph :=  MarkdownItalic new.
	emph2 :=  MarkdownItalic new.
	emph2 children add: (MarkdownString newFrom: 'italic text').
	emph children
		add: (MarkdownString newFrom: '(');
		add: emph2;
		add: (MarkdownString newFrom: ')').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output