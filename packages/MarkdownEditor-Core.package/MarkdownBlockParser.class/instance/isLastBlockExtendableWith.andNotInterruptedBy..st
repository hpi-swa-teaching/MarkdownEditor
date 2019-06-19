parsing
isLastBlockExtendableWith: aString andNotInterruptedBy: aMarkdownBlockClass

	^ self blocks notEmpty
		and: [self blocks last isExtendableWith: aString]
		and: [(self blocks last isInterruptedBy: aMarkdownBlockClass) not]