tests - interpretation
testProcessingTwoDelimitersRemovesDelimitersInbetween

	| opener closer delimiterToBeRemoved |
	inlineTextStyler tokenize: '**a*b**'.
	opener := inlineTextStyler tokens first.
	delimiterToBeRemoved := inlineTextStyler tokens third.
	closer := inlineTextStyler tokens fifth.
	inlineTextStyler process: opener and: closer.
	
	self deny: (inlineTextStyler tokens includes: delimiterToBeRemoved)