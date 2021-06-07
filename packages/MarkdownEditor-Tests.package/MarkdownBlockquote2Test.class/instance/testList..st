testLoop
testList: anOrderedCollection
	
	| blockquote |
	anOrderedCollection do: [:testTupel | 
		blockquote := MarkdownBlockquote2 newFrom: testTupel first.
		testTupel size = 1 
			ifTrue: [self assert: nil equals: blockquote]
			ifFalse: [self assert: testTupel second equals: blockquote innerLine]]