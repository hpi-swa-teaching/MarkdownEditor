helpers - reference
cleanUpForImage

	self inlineElements last removeLast.
	self inlineElements last isEmpty
		ifTrue: [self inlineElements removeLast]