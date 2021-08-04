view
treeRepresentation

	| copy |
	copy := super treeRepresentation.
	{'level', String tab, self level} addAllFirstTo: copy.
	^ copy