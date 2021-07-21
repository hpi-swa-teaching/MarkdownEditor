tests
testGetNextIndentationLevelContainer

	| paragraph expectedCollection |
	paragraph := MarkdownParagraph new
		startPosition: 1;
		endPosition: 5;
		yourself.
	expectedCollection := {'start', String tab, sampleDocument startPosition.
		'end', String tab, sampleDocument endPosition. 
		paragraph} asOrderedCollection.
	self assert: expectedCollection
		equals: (outlineModel getNextIndentationLevel: sampleDocument)