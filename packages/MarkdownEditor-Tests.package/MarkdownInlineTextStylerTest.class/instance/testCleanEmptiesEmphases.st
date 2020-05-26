tests - cleaning
testCleanEmptiesEmphases

	inlineTextStyler 
		inlineElements: {MarkdownEmphasis from: 1 to: 2} asOrderedCollection;
		clean.
	
	self assert: inlineTextStyler inlineElements isEmpty