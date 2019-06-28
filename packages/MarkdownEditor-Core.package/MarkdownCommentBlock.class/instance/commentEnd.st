accessing
commentEnd
	
	| closingTag |
	closingTag := self closingTag.
	^ self isClosed
		ifTrue: [(self content findString: closingTag) + closingTag size - 1]
		ifFalse: [self content size]