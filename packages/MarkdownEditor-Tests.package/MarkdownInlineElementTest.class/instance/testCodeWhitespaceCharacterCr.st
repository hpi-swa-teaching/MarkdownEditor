code span
testCodeWhitespaceCharacterCr

	| codeSpan expectedCodeSpan |
	codeSpan := MarkdownCodeSpan newFrom: 't', Character cr, 't' fenceLength: 0.
	expectedCodeSpan := MarkdownCodeSpan new.
	expectedCodeSpan content: 't t';
		totalLength: 3.
		
	self assert: expectedCodeSpan equals: codeSpan