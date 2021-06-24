parse
createEmphasisWith: anEmphasisType with: aCollectionOfChildren

	| emphasis |
	emphasis := anEmphasisType new.
	emphasis children: (self cleanUp: aCollectionOfChildren).
	^ emphasis
	