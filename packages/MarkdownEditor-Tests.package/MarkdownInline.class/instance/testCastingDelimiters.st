test - delimiters
testCastingDelimiters

	| delimitersToBeCasted expectedOutput del |
	del := MarkdownDelimiter newFrom: ' *t'.
	delimitersToBeCasted := LinkedList newFrom: {del. MarkdownDelimiter new count: 0}.
	secondPhase delimiters: (LinkedList newFrom: {del}).
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: '*'}.
    
	self assert: expectedOutput equals: (secondPhase castRemainingDelimitersFrom: delimitersToBeCasted)

	