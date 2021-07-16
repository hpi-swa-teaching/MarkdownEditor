as yet unclassified
testGetNextIndentationLevelContainer

	| paragraph |
	paragraph := MarkdownParagraph new.
	self assert: {paragraph} asOrderedCollection 
		equals: (outlineModel getNextIndentationLevel: self sampleDocument)