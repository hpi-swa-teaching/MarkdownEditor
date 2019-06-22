tests - cleaning
testCleanEmptiesAttributes

	inlineTextStyler 
		attributes: {MarkdownAttributeBold new} asOrderedCollection;
		clean.
	
	self assert: inlineTextStyler attributes isEmpty