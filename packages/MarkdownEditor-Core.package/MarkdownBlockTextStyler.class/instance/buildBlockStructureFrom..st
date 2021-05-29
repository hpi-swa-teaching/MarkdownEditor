parsing
buildBlockStructureFrom: aCollectionOfMarkdownLines

	| newBlocks |
	newBlocks := OrderedCollection new.
	aCollectionOfMarkdownLines do: [:line |
		(newBlocks notEmpty and: [newBlocks last isExtendableWith: line])
			ifTrue: [newBlocks last append: line]
			ifFalse: [newBlocks add: line asMarkdownBlock]].
	
	^ newBlocks