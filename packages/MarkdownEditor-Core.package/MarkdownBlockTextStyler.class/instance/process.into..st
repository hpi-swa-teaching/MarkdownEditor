parsing
process: aMarkdownLine into: aCollectionOfMarkdownBlocks

	(self isLastBlockIn: aCollectionOfMarkdownBlocks extendableWith: aMarkdownLine)
		ifTrue: [aCollectionOfMarkdownBlocks last append: aMarkdownLine]
		ifFalse: [aCollectionOfMarkdownBlocks add: aMarkdownLine asMarkdownBlock]