applying
addChild: aBlock withState: aParsingState

	(self canContain: aBlock) 
		ifFalse: [self finalize: aParsingState.
			self beClosed. 
			^ self container addChild: aBlock withState: aParsingState].
	self appendChild: aBlock.
	^ aBlock.