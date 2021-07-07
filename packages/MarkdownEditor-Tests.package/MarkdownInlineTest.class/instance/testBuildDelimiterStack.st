tests - delimiter stack
testBuildDelimiterStack
	
	| expectedOutput |
	firstPhase parse: '**t * t**'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownDelimiter newFromPadded: ' **t'. 
		MarkdownDelimiter newFromPadded: 't** '}.

	self assert: expectedOutput equals: firstPhase delimiters