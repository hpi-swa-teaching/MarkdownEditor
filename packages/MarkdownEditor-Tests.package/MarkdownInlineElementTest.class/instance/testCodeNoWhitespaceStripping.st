code span
testCodeNoWhitespaceStripping

	| codeSpan expectedCodeSpan |
	codeSpan := MarkdownCodeSpan newFrom: '  t' fenceLength: 0.
	expectedCodeSpan := MarkdownCodeSpan new.
	expectedCodeSpan code: '  t';
		fenceLength: 0;
		rawContent: '  t'.
		
	self assert: expectedCodeSpan equals: codeSpan