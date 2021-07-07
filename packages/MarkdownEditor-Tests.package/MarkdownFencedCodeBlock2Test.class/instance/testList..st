testLoop
testList: anOrderedCollection
	
	| codeBlock |
	anOrderedCollection do: [:testTupel | 
		codeBlock := MarkdownFencedCodeBlock newFrom: testTupel first.
		testTupel size = 1 
			ifTrue: [self assert: nil equals: codeBlock]
			ifFalse: [self assert: testTupel second equals: codeBlock info.
				self assert: testTupel third equals: codeBlock indention.
				self assert: testTupel fourth equals: codeBlock openingFence]]