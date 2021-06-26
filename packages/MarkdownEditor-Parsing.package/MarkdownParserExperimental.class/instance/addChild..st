deprecated
addChild: aBlock 

	"DEPRECATED"
	[self state canContain: aBlock] whileFalse: [self finalize: self state tip].
	self state tip appendChild: aBlock.
	self state tip aBlock.
	^ aBlock.