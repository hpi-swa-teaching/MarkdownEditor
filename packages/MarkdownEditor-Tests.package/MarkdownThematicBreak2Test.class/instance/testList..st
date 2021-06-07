testLoop
testList: anOrderedCollection
	
	| thematicBreak |
	anOrderedCollection do: [:testTupel | 
		thematicBreak := MarkdownThematicBreak2 newFrom: testTupel first.
		testTupel second
			ifTrue: [self assert: (thematicBreak isKindOf: MarkdownThematicBreak2)]
			ifFalse: [self assert: nil equals: thematicBreak]]