phase 3
lazyContinuation

	self state allBlocksClosed not & 
	self blankLine not & 
	(self state tip isKindOf: self pragraphClass)
	ifTrue: [self addLine. ^true].
	^false