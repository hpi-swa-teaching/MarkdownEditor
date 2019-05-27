tests - cleaning
testCleanEmptiesAttributes

	inlineParser attributes: {MarkdownAttributeBold new} asOrderedCollection.
	inlineParser clean.
	
	self assert: inlineParser attributes isEmpty