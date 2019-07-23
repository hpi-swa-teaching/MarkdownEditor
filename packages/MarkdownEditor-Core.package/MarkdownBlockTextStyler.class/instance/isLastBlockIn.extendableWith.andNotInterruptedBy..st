parsing
isLastBlockIn: aCollectionOfMarkdownBlocks extendableWith: aString andNotInterruptedBy: aMarkdownBlockClass

	^ aCollectionOfMarkdownBlocks notEmpty
		and: [aCollectionOfMarkdownBlocks last isExtendableWith: aString]
		and: [(aCollectionOfMarkdownBlocks last isInterruptedBy: aMarkdownBlockClass) not]