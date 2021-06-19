accessing
lastMatchedBlock: aBlock
	
	(aBlock isKindOf: MarkdownList2)
		ifTrue: [self basicLastMatchedBlock: aBlock children last]
		ifFalse: [self basicLastMatchedBlock: aBlock].