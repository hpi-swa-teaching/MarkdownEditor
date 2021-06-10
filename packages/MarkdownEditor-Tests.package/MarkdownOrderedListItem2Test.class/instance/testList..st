testLoop
testList: anOrderedCollection
	
	| listItem |
	anOrderedCollection do: [:testTupel | 
		listItem := MarkdownOrderedListItem2 newFrom: testTupel first.
		testTupel size = 1 
			ifTrue: [self assert: nil equals: listItem]
			ifFalse: [self assert: testTupel second equals: listItem number.
				self assert: testTupel third equals: listItem indention.
				self assert: testTupel fourth equals: listItem innerLine]]