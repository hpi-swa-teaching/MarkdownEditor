code span
testCodeNoWhitespaceStripping2

	| codeSpan expectedCodeSpan |
	codeSpan := MarkdownCodeSpan newFrom: '  ' fenceLength: 0.
	expectedCodeSpan := MarkdownCodeSpan new.
	expectedCodeSpan code: '  ';
		fenceLength: 0;
		rawContent: '  '.
		
	self assert: expectedCodeSpan equals: codeSpan