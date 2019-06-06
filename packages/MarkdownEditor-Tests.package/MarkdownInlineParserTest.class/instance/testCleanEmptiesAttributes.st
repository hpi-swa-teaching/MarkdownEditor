tests - cleaning
testCleanEmptiesAttributes

	inlineParser 
		attributes: {MarkdownAttributeBold new} asOrderedCollection;
		clean.
	
	self assert: inlineParser attributes isEmpty