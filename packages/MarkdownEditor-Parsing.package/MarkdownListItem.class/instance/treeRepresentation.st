view
treeRepresentation

	| representation |
	representation := super treeRepresentation.
	{'marker', String tab, self listMarker. 
		'level', String tab, self level} asOrderedCollection addAllFirstTo: representation.
	^ representation