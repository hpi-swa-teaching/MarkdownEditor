tests - delimiters
testAllDelimitersOfSameType

	| del1 del2 del3 |
	del1 := MarkdownDelimiter newFrom: ' ','**', 't'.
	del2 := MarkdownDelimiter newFrom: 't','~~', ' '.
	del3 := MarkdownDelimiter newFrom: ' ', '***','t'.

	secondPhase delimiters: (LinkedList newFrom: {del1. del3}).
	self assert: false equals: secondPhase areOnlyDifferentDelimiterTypesLeft.
	
	secondPhase delimiters: (LinkedList newFrom: {del1. del2}).
	self assert: true equals: secondPhase areOnlyDifferentDelimiterTypesLeft