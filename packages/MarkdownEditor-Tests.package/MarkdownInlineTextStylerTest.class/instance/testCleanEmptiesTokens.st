tests - cleaning
testCleanEmptiesTokens

	inlineParser 
		tokens: {MarkdownEmphasisDelimiter new} asOrderedCollection;
		clean.
	
	self assert: inlineParser tokens isEmpty