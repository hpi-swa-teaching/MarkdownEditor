as yet unclassified
testList: anOrderedCollection
	
	| codeBlock |
	anOrderedCollection do: [:testTupel | 
		codeBlock := MarkdownFencedCodeBlock2 newFrom: testTupel first.
		testTupel size = 1 
			ifTrue: [self assert: nil equals: codeBlock]
			ifFalse: [self assert: testTupel second equals: codeBlock infoString.
				self assert: testTupel third equals: codeBlock indention.
				self assert: testTupel fourth equals: codeBlock openingFence]]