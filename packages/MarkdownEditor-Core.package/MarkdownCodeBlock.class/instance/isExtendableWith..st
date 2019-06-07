testing
isExtendableWith: aString

	^ self content lineCount = 1
		or: [self isClosed not]