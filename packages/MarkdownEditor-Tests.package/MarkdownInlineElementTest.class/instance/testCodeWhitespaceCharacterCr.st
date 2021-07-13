code span
testCodeWhitespaceCharacterCr

	| codeSpan expectedCodeSpan |
	codeSpan := MarkdownCodeSpan newFrom: 't', Character cr, 't' fenceLength: 0.
	expectedCodeSpan := MarkdownCodeSpan new.
	expectedCodeSpan content: 't t';
		fenceLength: 0;
		rawContent: 't', Character cr, 't'.
		
	self assert: expectedCodeSpan equals: codeSpan