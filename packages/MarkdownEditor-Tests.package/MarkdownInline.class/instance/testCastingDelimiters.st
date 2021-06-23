tests - delimiters
testCastingDelimiters

	| delimitersToBeCasted expectedOutput del |
	del := MarkdownDelimiter newFrom: ' *t'.
	delimitersToBeCasted := MarkdownLinkedList newFrom: {del. MarkdownDelimiter new count: 0}.
	secondPhase delimiters: (MarkdownLinkedList newFrom: {del}).
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString2 newFrom: '*'}.
    
	self assert: expectedOutput equals: (secondPhase castRemainingDelimitersFrom: delimitersToBeCasted)

	