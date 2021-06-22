tests - nested emphasis
testParseEmphNested7
    
	| output expectedOutput emphItalic emphStrong |
    
	output := parser parse: '*foo __bar *baz bim__ bam*'.
    
	emphItalic := MarkdownItalic2 new.
	emphStrong := MarkdownBold2 new.
	
	emphStrong children add: (MarkdownString2 newFrom: 'bar *baz bim').	
	emphItalic children add: (MarkdownString2 newFrom: 'foo ');
		add: emphStrong;
		add: (MarkdownString2 newFrom: ' bam').
	
	expectedOutput := LinkedList newFrom: {emphItalic}.
	self assert: expectedOutput equals: output
