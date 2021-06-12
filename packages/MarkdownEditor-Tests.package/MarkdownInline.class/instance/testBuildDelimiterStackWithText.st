tests - emphasis
testBuildDelimiterStackWithText
	
	| expectedOutput |
	firstPhase parse: '** hello world** ****'.
	expectedOutput := LinkedList newFrom: {MarkdownDelimiter newFrom: ' **t'. 
		MarkdownDelimiter newFrom: 't** '.
		MarkdownDelimiter newFrom: ' ****'}.
	self assert: expectedOutput equals: firstPhase delimiters.