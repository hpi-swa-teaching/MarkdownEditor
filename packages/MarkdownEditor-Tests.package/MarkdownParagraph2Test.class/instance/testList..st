testLoop
testList: anOrderedCollection
	
	| paragraph |
	anOrderedCollection do: [:testTupel | 
		paragraph := MarkdownParagraph2 newFrom: testTupel first.
		testTupel size = 1 
			ifTrue: [self assert: nil equals: paragraph]
			ifFalse: [self assert: testTupel second equals: paragraph content]]