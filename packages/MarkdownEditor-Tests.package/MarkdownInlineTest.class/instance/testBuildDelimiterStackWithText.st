tests - delimiter stack
testBuildDelimiterStackWithText
	
	| expectedOutput |
	firstPhase parse: '**hello world** ****'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownDelimiter newFromPadded: ' **t'. 
		MarkdownDelimiter newFromPadded: 't** '}.
		
	self assert: expectedOutput equals: firstPhase delimiters