tests - delimiters
testNotADelimiter

	| expectedOutput |
	firstPhase previousChar: ' '. 
	firstPhase processPossibleDelimitersFrom: '** '.
	expectedOutput := MarkdownString newFrom: '**'.

	self assert: expectedOutput equals: firstPhase inlineElements first