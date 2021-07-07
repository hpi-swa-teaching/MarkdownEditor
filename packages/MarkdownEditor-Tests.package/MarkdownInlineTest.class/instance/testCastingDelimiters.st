tests - delimiters
testCastingDelimiters

	| delimitersToBeCasted expectedOutput del |
	del := MarkdownDelimiter newFromPadded: ' *t'.
	delimitersToBeCasted := MarkdownLinkedList newFrom: {del. MarkdownDelimiter new count: 0}.
	secondPhase delimiters: (MarkdownLinkedList newFrom: {del}).
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '*'}.
    
	self assert: expectedOutput equals: (secondPhase castRemainingDelimitersFrom: delimitersToBeCasted)