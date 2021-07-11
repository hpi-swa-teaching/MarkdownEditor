code span
testCodeWhitespaceStripping

	| codeSpan expectedCodeSpan |
	codeSpan := MarkdownCodeSpan newFrom: 't', Character cr, '    t' fenceLength: 0.
	expectedCodeSpan := MarkdownCodeSpan new.
	expectedCodeSpan content: 't t';
		totalLength: 7.
		
	self assert: expectedCodeSpan equals: codeSpan