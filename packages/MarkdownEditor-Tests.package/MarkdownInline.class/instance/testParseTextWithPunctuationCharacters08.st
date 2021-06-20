tests - punctuation characters
testParseTextWithPunctuationCharacters08

	| expectedOutput output emph2 emph3 emph1 |
	output := parser parse: '*(*italic text*)*'.
	emph1 := MarkdownItalic2 new.
	emph1 children add: (MarkdownString2 newFrom: '(').
	emph3 := MarkdownItalic2 new.
	emph3 children add: (MarkdownString2 newFrom: ')').
	
	emph2 := MarkdownItalic2 new.	
	emph2 children add: emph1.
	emph2 children add: (MarkdownString2 newFrom: '(italic text)').
	emph2 children add: emph3.
	expectedOutput := LinkedList newFrom: {emph2}.
	self assert: expectedOutput equals: output