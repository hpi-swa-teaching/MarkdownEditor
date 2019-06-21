parsing
process: aString into: aCollectionOfMarkdownBlocks

	| matchingBlockClass |
	matchingBlockClass := self determineMatchingBlockClass: aString.
	(self isLastBlockIn: aCollectionOfMarkdownBlocks extendableWith: aString andNotInterruptedBy: matchingBlockClass)
		ifTrue: [aCollectionOfMarkdownBlocks last append: aString]
		ifFalse: [aCollectionOfMarkdownBlocks add: (matchingBlockClass newFrom: aString)]