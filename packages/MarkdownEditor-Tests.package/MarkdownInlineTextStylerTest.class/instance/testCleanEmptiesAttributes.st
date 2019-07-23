tests - cleaning
testCleanEmptiesAttributes

	inlineTextStyler 
		attributes: {MarkdownEmphasis from: 1 to: 2} asOrderedCollection;
		clean.
	
	self assert: inlineTextStyler attributes isEmpty