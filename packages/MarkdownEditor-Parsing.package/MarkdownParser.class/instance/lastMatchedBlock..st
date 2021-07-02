accessing
lastMatchedBlock: aBlock
	
	(aBlock isKindOf: MarkdownList)
		ifTrue: [self basicLastMatchedBlock: aBlock children last]
		ifFalse: [self basicLastMatchedBlock: aBlock].