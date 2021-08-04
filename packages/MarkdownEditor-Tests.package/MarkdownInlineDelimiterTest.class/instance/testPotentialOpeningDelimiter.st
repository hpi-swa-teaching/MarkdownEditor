tests - delimiters
testPotentialOpeningDelimiter

	| output expectedOutput |
	output := MarkdownDelimiter newFromPadded: ' **t'.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialOpener;
		beValid.

	self assert: expectedOutput equals: output