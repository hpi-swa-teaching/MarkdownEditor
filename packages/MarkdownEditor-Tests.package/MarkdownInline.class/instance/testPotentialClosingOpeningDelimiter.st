test - delimiters
testPotentialClosingOpeningDelimiter

	| output expectedOutput |
	output := MarkdownDelimiter newFrom: 't**t'.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialOpener;
		bePotentialCloser.
	self assert: expectedOutput equals: output