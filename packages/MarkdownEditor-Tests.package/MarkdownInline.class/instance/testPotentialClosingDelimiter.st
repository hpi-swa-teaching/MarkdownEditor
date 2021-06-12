test - delimiters
testPotentialClosingDelimiter

	| output expectedOutput |
	output := MarkdownDelimiter newFrom: 't** '.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialCloser.
	self assert: expectedOutput equals: output