tests - interpretation
testProcessingTwoDelimitersRemovesDelimitersInbetween

	| opener closer delimiterToBeRemoved |
	inlineParser text: '**a*b**' asText.
	inlineParser tokenize.
	opener := inlineParser tokens first.
	delimiterToBeRemoved := inlineParser tokens third.
	closer := inlineParser tokens fifth.
	inlineParser process: opener and: closer.
	
	self deny: (inlineParser tokens includes: delimiterToBeRemoved)