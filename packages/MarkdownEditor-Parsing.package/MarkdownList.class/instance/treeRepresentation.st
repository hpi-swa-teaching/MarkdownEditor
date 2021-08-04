view
treeRepresentation

	| representation |
	representation := super treeRepresentation.
	{'ordered', String tab, self isOrdered} asOrderedCollection addAllFirstTo: representation.
	^ representation