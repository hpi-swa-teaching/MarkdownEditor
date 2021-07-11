code span
testCodeNoWhitespaceStripping

	| codeSpan expectedCodeSpan |
	codeSpan := MarkdownCodeSpan newFrom: '  t' fenceLength: 0.
	expectedCodeSpan := MarkdownCodeSpan new.
	expectedCodeSpan content: '  t';
		totalLength: 3.
		
	self assert: expectedCodeSpan equals: codeSpan