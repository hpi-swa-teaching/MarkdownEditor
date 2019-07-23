tests - cleaning
testCleanEmptiesAttributes

	inlineTextStyler 
		attributes: {MarkdownEmphasis bold} asOrderedCollection;
		clean.
	
	self assert: inlineTextStyler attributes isEmpty