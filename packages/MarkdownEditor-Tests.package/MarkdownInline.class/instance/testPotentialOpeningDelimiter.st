test - delimiters
testPotentialOpeningDelimiter

	| output expectedOutput |
	output := MarkdownDelimiter newFrom: ' **t'.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialOpener.
	self assert: expectedOutput equals: output