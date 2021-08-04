view
treeRepresentation

	| copiedInlineElements |
	copiedInlineElements := self inlineElements copy.
	super treeRepresentation addAllFirstTo: copiedInlineElements.
	^ copiedInlineElements