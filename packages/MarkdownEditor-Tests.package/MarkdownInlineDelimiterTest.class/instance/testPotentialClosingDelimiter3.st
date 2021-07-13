tests - delimiters
testPotentialClosingDelimiter3

	| output expectedOutput |
	output := MarkdownDelimiter newFromPadded: 't**', Character tab.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialCloser;
		beValid.

	self assert: expectedOutput equals: output