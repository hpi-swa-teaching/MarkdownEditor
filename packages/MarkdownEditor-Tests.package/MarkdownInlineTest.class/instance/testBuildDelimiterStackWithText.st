tests - delimiter stack
testBuildDelimiterStackWithText
	
	| expectedOutput |
	firstPhase parse: '**hello world** ****'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownDelimiter newFrom: ' **t'. 
		MarkdownDelimiter newFrom: 't** '}.
		
	self assert: expectedOutput equals: firstPhase delimiters