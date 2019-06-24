accessing
commentEnd

	^ self isClosed
		ifTrue: [(self content findString: '-->') + 2]
		ifFalse: [self content size]