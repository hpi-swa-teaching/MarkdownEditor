tests - delimiters
testPotentialOpeningDelimiter2

	| output expectedOutput |
	output := MarkdownDelimiter newFrom: ('', Character cr,'**t').
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialOpener.
	self assert: expectedOutput equals: output