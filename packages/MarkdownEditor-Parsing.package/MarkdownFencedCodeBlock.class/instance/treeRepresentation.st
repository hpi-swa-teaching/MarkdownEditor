view
treeRepresentation

	| copy |
	copy := super treeRepresentation.
	{'info', String tab, self info} addAllFirstTo: copy.
	^ copy