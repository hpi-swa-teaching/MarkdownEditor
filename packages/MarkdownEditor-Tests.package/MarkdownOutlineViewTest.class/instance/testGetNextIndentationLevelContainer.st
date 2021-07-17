as yet unclassified
testGetNextIndentationLevelContainer

	| paragraph expectedCollection |
	paragraph := MarkdownParagraph new
		startPosition: 1;
		endPosition: 5;
		yourself.
	expectedCollection := {'start:', String tab, paragraph startPosition.
		'end:', String tab, paragraph endPosition. 
		paragraph} asOrderedCollection.
	self assert: expectedCollection
		equals: (outlineModel getNextIndentationLevel: self sampleDocument)