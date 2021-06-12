test - delimiters
testCastingDelimiters

	| delimitersToBeCasted expectedOutput |
	delimitersToBeCasted := OrderedCollection newFrom: {MarkdownDelimiter newFrom: ' *t'. MarkdownDelimiter new count: 0}.
	expectedOutput := OrderedCollection newFrom: {MarkdownString2 newFrom: '*'}.
	
	self assert: expectedOutput equals: (secondPhase castRemainingDelimitersFrom: delimitersToBeCasted)
	