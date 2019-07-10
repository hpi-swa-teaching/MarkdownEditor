tests - interpretation
testInterpretTokensCutsBoldDelimiters

	| attribute |
	inlineTextStyler 
		tokenize: '***f**';
		interpretTokens.
	
	self assert: 1 equals: inlineTextStyler attributes size.
	self assert: 4 equals: inlineTextStyler tokens size.
	
	attribute := inlineTextStyler attributes first.
	self assert: MarkdownAttribute bold textAttribute equals: attribute textAttribute.
	self assert: 2 equals: attribute startPosition.
	self assert: 6 equals: attribute endPosition