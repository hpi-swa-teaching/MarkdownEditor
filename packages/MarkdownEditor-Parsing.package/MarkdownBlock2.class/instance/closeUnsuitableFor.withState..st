applying
closeUnsuitableFor: aBlock withState: aParsingState 

	(self canContain: aBlock) 
		ifFalse: [self finalize: aParsingState.
			self beClosed. 
			^ self container closeUnsuitableFor: aBlock withState: aParsingState].
	^ aBlock.