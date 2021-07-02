testLoop
testList: anOrderedCollection
	
	| heading |
	anOrderedCollection do: [:testTupel | 
		heading := MarkdownATXHeading newFrom: testTupel first.
		testTupel size = 1 
			ifTrue: [self assert: nil equals: heading]
			ifFalse: [self assert: testTupel second equals: heading level.
				self assert: testTupel third equals: heading content]]