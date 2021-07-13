helpers - reference
cleanUpForImage

	self inlineElements last removeLast.
	self currentIndex: self currentIndex - 1.
	self inlineElements last isEmpty
		ifTrue: [self inlineElements removeLast]