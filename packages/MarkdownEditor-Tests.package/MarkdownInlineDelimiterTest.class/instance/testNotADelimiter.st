tests - delimiters
testNotADelimiter

	| expectedOutput |
	firstPhase previousChar: ' '. 
	firstPhase processPossibleDelimitersFrom: '** '.
	expectedOutput := MarkdownString newFrom: '**' startingAt: 1.

	self assert: expectedOutput equals: firstPhase inlineElements first