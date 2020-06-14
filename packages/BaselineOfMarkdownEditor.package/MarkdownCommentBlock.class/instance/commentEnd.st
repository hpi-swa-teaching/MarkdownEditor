accessing
commentEnd
	
	^ self isClosed
		ifTrue: [(self content findString: self closingTag) + self closingTag size - 1]
		ifFalse: [self content size]