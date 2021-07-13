tests - delimiters
testPotentialClosingDelimiter2

	| output expectedOutput |
	output := MarkdownDelimiter newFromPadded: 't**', Character cr.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialCloser;
		beValid.

	self assert: expectedOutput equals: output