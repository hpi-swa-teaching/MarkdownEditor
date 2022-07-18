phase 3
lazyContinuation

	(self state allBlocksClosed not 
		and: [self blankLine not 
		and: [self state tip isKindOf: self paragraphClass]])
			ifTrue: [self addLine. 
					^ true].
	^ false