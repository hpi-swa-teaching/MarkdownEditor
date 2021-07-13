tests - delimiters
testPotentialClosingDelimiter

	| output expectedOutput |
	output := MarkdownDelimiter newFromPadded: 't** '.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialCloser;
		beValid.

	self assert: expectedOutput equals: output