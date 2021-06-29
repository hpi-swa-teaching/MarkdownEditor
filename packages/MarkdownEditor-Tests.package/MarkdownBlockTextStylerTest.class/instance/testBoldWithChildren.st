as yet unclassified
testBoldWithChildren

	| emph emph2 str str2 |
	emph := MarkdownBold2 new.
	str := MarkdownString2 newFrom: 'hello'.
	emph2 := MarkdownItalic2 new.
	str2 := MarkdownString2 newFrom: 'world'.
	
	emph2 children add: str2.
	emph children add: str;
		add: emph2.
	
	self assert: false equals: (blockTextStyler styleBoldWith: emph)
	
	