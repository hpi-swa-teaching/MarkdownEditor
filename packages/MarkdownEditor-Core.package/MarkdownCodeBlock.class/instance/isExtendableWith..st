testing
isExtendableWith: aMarkdownLine

	^ self lines size = 1
		or: [self isClosed not]