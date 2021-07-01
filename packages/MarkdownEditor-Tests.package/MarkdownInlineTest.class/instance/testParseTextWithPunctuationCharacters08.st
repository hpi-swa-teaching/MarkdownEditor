tests - punctuation characters
testParseTextWithPunctuationCharacters08

	| expectedOutput output emph emph2 |
	output := parser parseInline: '*(*italic text*)*'.
	emph :=  MarkdownItalic2 new.
	emph2 :=  MarkdownItalic2 new.
	emph2 children add: (MarkdownString2 newFrom: 'italic text').
	emph children
		add: (MarkdownString2 newFrom: '(');
		add: emph2;
		add: (MarkdownString2 newFrom: ')').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output