testLoop
testListApply: anOrderedCollection
	
	| blockquote |
	anOrderedCollection do: [:testTupel | 
		blockquote := MarkdownBlockquote2 new.
		testTupel size = 1
			ifTrue: [self assert: nil equals: (blockquote applyOnLine: testTupel first)]
			ifFalse: [self assert: testTupel second equals: (blockquote applyOnLine: testTupel first)]]