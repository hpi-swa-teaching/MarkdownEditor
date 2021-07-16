view
treeRepresentation

	| copiedChildren |
	copiedChildren := self children copy.
	super treeRepresentation addAllFirstTo: copiedChildren.
	^ copiedChildren