tests - delimiters
testPotentialOpeningDelimiter3

	| output expectedOutput |
	output := MarkdownDelimiter newFromPadded: ('', Character tab, '**t').
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialOpener;
		beValid.

	self assert: expectedOutput equals: output