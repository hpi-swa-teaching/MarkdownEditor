view
treeRepresentation

	| copiedChildren |
	copiedChildren := super treeRepresentation copy asOrderedCollection.
	{'path:', String tab, self path} addAllFirstTo: copiedChildren.

	^ copiedChildren