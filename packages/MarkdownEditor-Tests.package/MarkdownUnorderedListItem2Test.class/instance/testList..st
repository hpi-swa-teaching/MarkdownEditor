testLoop
testList: anOrderedCollection
	
	| listItem |
	anOrderedCollection do: [:testTupel | 
		listItem := MarkdownUnorderedListItem2 newFrom: testTupel first.
		testTupel size = 1 
			ifTrue: [self assert: nil equals: listItem]
			ifFalse: [self assert: testTupel second equals: listItem indention.
				self assert: testTupel third equals: listItem innerLine]]