testLoop
testListApply: anOrderedCollection
	
	| blockquote |
	anOrderedCollection do: [:testTupel | 
		blockquote := MarkdownBlockquote2 new.
		testTupel size = 1
			ifTrue: [self assert: nil equals: (blockquote continue: testTupel first)]
			ifFalse: [self assert: testTupel second equals: (blockquote continue: testTupel first)]]