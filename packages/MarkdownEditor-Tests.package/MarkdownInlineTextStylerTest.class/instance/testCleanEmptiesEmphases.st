tests - cleaning
testCleanEmptiesEmphases

	inlineTextStyler 
		emphases: {MarkdownEmphasis from: 1 to: 2} asOrderedCollection;
		clean.
	
	self assert: inlineTextStyler emphases isEmpty