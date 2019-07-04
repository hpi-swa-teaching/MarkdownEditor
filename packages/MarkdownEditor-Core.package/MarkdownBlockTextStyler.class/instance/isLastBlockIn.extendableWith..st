parsing
isLastBlockIn: aCollectionOfMarkdownBlocks extendableWith: aMarkdownLine

	^ aCollectionOfMarkdownBlocks notEmpty
		and: [aCollectionOfMarkdownBlocks last isExtendableWith: aMarkdownLine]