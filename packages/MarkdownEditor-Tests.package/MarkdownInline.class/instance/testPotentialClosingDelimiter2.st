tests - delimiters
testPotentialClosingDelimiter2

	| output expectedOutput |
	output := MarkdownDelimiter newFrom: 't','**', Character cr.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialCloser.
	self assert: expectedOutput equals: output