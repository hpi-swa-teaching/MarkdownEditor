code span
testCodeWhitespaceStripping3

	| codeSpan expectedCodeSpan |
	codeSpan := MarkdownCodeSpan newFrom: '  t  ' fenceLength: 0.
	expectedCodeSpan := MarkdownCodeSpan new.
	expectedCodeSpan content: ' t ';
		fenceLength: 0;
		rawContent: '  t  '.
		
	self assert: expectedCodeSpan equals: codeSpan