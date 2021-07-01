newStrat
addChild: aBlock 

	(self canContain: aBlock) 
		ifFalse: [self finalize. 
			^ self container addChild: aBlock].
	self appendChild: aBlock.
	^ aBlock.