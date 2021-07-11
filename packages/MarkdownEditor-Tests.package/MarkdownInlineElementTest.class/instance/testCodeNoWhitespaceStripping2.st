code span
testCodeNoWhitespaceStripping2

	| codeSpan expectedCodeSpan |
	codeSpan := MarkdownCodeSpan newFrom: '  ' fenceLength: 0.
	expectedCodeSpan := MarkdownCodeSpan new.
	expectedCodeSpan content: '  ';
		totalLength: 2.
		
	self assert: expectedCodeSpan equals: codeSpan