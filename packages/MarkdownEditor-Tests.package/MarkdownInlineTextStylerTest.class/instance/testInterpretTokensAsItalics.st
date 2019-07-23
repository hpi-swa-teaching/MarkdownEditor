tests - interpretation
testInterpretTokensAsItalics

	| attribute |
	inlineTextStyler 
		tokenize: '*foo*';
		interpretTokens.
	
	self assert: 1 equals: inlineTextStyler attributes size.
	attribute := inlineTextStyler attributes first.
	self assert: MarkdownEmphasis italic textAttribute equals: attribute textAttribute.
	self assert: 1 equals: attribute startPosition.
	self assert: 5 equals: attribute endPosition