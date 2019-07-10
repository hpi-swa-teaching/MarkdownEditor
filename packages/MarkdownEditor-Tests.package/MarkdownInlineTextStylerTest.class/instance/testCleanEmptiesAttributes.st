tests - cleaning
testCleanEmptiesAttributes

	inlineTextStyler 
		attributes: {MarkdownAttribute bold} asOrderedCollection;
		clean.
	
	self assert: inlineTextStyler attributes isEmpty