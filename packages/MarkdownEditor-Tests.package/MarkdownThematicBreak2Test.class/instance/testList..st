testLoop
testList: anOrderedCollection
	
	| thematicBreak |
	anOrderedCollection do: [:testTupel | 
		thematicBreak := MarkdownThematicBreak newFrom: testTupel first.
		testTupel second
			ifTrue: [self assert: (thematicBreak isKindOf: MarkdownThematicBreak)]
			ifFalse: [self assert: nil equals: thematicBreak]]