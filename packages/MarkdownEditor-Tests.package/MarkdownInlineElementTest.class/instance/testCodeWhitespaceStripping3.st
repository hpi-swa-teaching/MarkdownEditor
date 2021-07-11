code span
testCodeWhitespaceStripping3

	| codeSpan expectedCodeSpan |
	codeSpan := MarkdownCodeSpan newFrom: '  t  ' fenceLength: 0.
	expectedCodeSpan := MarkdownCodeSpan new.
	expectedCodeSpan content: ' t ';
		totalLength: 5.
		
	self assert: expectedCodeSpan equals: codeSpan