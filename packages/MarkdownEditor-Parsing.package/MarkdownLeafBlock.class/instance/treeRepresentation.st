view
treeRepresentation

	| copiedInlines |
	copiedInlines := self inlines copy.
	super treeRepresentation addAllFirstTo: copiedInlines.
	^ copiedInlines