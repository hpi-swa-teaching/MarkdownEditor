tests - delimiters
testPotentialOpeningDelimiter2

	| output expectedOutput |
	output := MarkdownDelimiter newFromPadded: ('', Character cr, '**t').
	expectedOutput := MarkdownDelimiter new.
	expectedOutput count: 2;
		type: $*;
		bePotentialOpener;
		beValid.

	self assert: expectedOutput equals: output