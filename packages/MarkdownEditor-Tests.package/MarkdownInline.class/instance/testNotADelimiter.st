tests - delimiters
testNotADelimiter

	| expectedOutput |
	firstPhase previousChar: ' '. 
	firstPhase processPossibleDelimitersFrom: '** ', ' '.
	expectedOutput := MarkdownString2 newFrom: '**'.
	self assert: expectedOutput equals: firstPhase inlineElements first
	