parsing
buildBlockStructureFrom: aCollectionOfMarkdownLines

	| blocks |
	blocks := OrderedCollection new.
	aCollectionOfMarkdownLines do: [:line |
		(blocks notEmpty and: [blocks last isExtendableWith: line])
			ifTrue: [blocks last append: line]
			ifFalse: [blocks add: line asMarkdownBlock]].
	Transcript clear.
	Transcript show: blocks.
	^ blocks