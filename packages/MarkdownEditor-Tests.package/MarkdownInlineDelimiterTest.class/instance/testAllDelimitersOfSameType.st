tests - delimiters
testAllDelimitersOfSameType

	| del1 del2 del3 |
	del1 := MarkdownDelimiter newFromPadded: ' **t'.
	del2 := MarkdownDelimiter newFromPadded: 't~~ '.
	del3 := MarkdownDelimiter newFromPadded: ' ***t'.

	secondPhase delimiters: (MarkdownLinkedList newFrom: {del1. del3}).
	self assert: false equals: secondPhase areOnlyDifferentDelimiterTypesLeft.
	
	secondPhase delimiters: (MarkdownLinkedList newFrom: {del1. del2}).
	self assert: true equals: secondPhase areOnlyDifferentDelimiterTypesLeft