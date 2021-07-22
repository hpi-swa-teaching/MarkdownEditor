view
treeRepresentation

	| copy |
	copy := super treeRepresentation.
	{'info', String tab, self info. self innerStartPosition} addAllFirstTo: copy.
	^ copy