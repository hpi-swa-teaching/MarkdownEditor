tests - interpretation
testProcessingTwoItalicDelimitersCreatesItalicAttribute

	| attribute |
	inlineTextStyler
		tokenize: '*a*';
		process: inlineTextStyler tokens first and: inlineTextStyler tokens last.
	
	self assert: 1 equals: inlineTextStyler attributes size.
	
	attribute := inlineTextStyler attributes first.
	self assert: MarkdownAttribute italic textAttribute equals: attribute textAttribute.
	self assert: 1 equals: attribute startPosition.
	self assert: 3 equals: attribute endPosition