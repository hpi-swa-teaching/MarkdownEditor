parsing
isLastBlockExtendableWith: aString

	^ self blocks notEmpty and: [self blocks last isExtendableWith: aString]