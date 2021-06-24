tests - delimiters
testPotentialClosingDelimiter3

	| output expectedOutput |
	output := MarkdownDelimiter newFrom: 't**', Character tab.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialCloser.

	self assert: expectedOutput equals: output