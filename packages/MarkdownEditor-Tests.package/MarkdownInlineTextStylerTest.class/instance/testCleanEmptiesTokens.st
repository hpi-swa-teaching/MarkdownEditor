tests - cleaning
testCleanEmptiesTokens

	inlineTextStyler 
		tokens: {MarkdownEmphasisDelimiter new} asOrderedCollection;
		clean.
	
	self assert: inlineTextStyler tokens isEmpty