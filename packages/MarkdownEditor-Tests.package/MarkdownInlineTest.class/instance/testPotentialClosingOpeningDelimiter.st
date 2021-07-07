tests - delimiters
testPotentialClosingOpeningDelimiter

	| output expectedOutput |
	output := MarkdownDelimiter newFromPadded: 't**t'.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialOpener;
		bePotentialCloser;
		beOriginalOpenerAndCloser;
		beValid.

	self assert: expectedOutput equals: output