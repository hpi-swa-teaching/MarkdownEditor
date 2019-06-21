parsing
isLastBlockIn: aCollectionOfMarkdownBlocks extendableWith: aString andNotInterruptedBy: aMarkdownBlockClass

	self flag: #refactor. "This will get nicer obnce we have the MarkdownLine"
	^ aCollectionOfMarkdownBlocks notEmpty
		and: [aCollectionOfMarkdownBlocks last isExtendableWith: aString]
		and: [(aCollectionOfMarkdownBlocks last isInterruptedBy: aMarkdownBlockClass) not]