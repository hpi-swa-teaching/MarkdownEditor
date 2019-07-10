tests - interpretation
testInterpretTokensCutDelimiterClosesTwice

	| firstAttribute secondAttribute |
	inlineTextStyler 
		tokenize: '*a**b***';
		interpretTokens.
	
	self assert: 2 equals: inlineTextStyler attributes size.
	self assert: 6 equals: inlineTextStyler tokens size.
	
	firstAttribute := inlineTextStyler attributes first.
	self assert: MarkdownAttribute bold textAttribute equals: firstAttribute textAttribute.
	self assert: 3 equals: firstAttribute startPosition.
	self assert: 7 equals: firstAttribute endPosition.
	
	secondAttribute := inlineTextStyler attributes second.
	self assert: MarkdownAttribute italic textAttribute equals: secondAttribute textAttribute.
	self assert: 1 equals: secondAttribute startPosition.
	self assert: 8 equals: secondAttribute endPosition