tests - cleaning
testCleanEmptiesTokens

	inlineParser tokens: {MarkdownEmphasisDelimiter new} asOrderedCollection.
	inlineParser clean.
	
	self assert: inlineParser tokens isEmpty