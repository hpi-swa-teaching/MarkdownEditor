test - delimiters
testCastingDelimiters

	| delimitersToBeCasted expectedOutput |
	delimitersToBeCasted := LinkedList newFrom: {MarkdownDelimiter newFrom: ' *t'. MarkdownDelimiter new count: 0}.
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: '*'}.
	
	self assert: expectedOutput equals: (secondPhase castRemainingDelimitersFrom: delimitersToBeCasted)
	