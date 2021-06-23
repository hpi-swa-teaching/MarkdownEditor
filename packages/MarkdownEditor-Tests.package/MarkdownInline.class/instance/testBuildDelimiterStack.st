tests - delimiter stack
testBuildDelimiterStack
	
	| expectedOutput |
	firstPhase parse: '**t * t**'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownDelimiter newFrom: ' **t'. 
		MarkdownDelimiter newFrom: 't** '}.

	self assert: expectedOutput equals: firstPhase delimiters