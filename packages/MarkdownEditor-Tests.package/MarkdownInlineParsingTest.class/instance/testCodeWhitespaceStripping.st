tests - inline code
testCodeWhitespaceStripping

	| codeSpan expectedCodeSpan |
	codeSpan := MarkdownCodeSpan newFrom: 't', Character cr, '    t' fenceLength: 0.
	expectedCodeSpan := MarkdownCodeSpan new.
	expectedCodeSpan code: 't t';
		fenceLength: 0;
		rawContent: 't', Character cr, '    t'.
		
	self assert: expectedCodeSpan equals: codeSpan