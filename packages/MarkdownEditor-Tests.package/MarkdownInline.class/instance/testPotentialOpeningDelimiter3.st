tests - delimiters
testPotentialOpeningDelimiter3

	| output expectedOutput |
	output := MarkdownDelimiter newFrom: ('', Character tab,'**t').
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialOpener.
	self assert: expectedOutput equals: output