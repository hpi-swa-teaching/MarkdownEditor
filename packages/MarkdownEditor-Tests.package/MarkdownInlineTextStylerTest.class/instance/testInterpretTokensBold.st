tests - interpretation
testInterpretTokensBold

	| attribute |
	inlineTextStyler 
		tokenize: '**foo**';
		interpretTokens.

	self assert: 1 equals: inlineTextStyler attributes size.
	attribute := inlineTextStyler attributes first.
	self assert: MarkdownAttribute bold textAttribute equals: attribute textAttribute.
	self assert: 1 equals: attribute startPosition.
	self assert: 7 equals: attribute endPosition