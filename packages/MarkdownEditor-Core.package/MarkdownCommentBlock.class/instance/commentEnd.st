accessing
commentEnd
	
	| closingTag |
	closingTag := self class closingTag.
	^ self isClosed
		ifTrue: [(self content findString: closingTag) + closingTag size - 1]
		ifFalse: [self content size]