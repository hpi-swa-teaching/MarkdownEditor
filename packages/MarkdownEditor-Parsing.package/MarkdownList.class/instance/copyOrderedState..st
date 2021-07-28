accessing
copyOrderedState: aBoolean

	aBoolean
		ifTrue: [self beOrdered]
		ifFalse: [self beUnordered]