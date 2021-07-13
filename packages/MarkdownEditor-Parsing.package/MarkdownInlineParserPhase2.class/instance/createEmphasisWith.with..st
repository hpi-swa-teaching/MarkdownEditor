parse
createEmphasisWith: anEmphasisType with: aCollectionOfChildren

	| emphasis |
	emphasis := anEmphasisType new.
	emphasis startPosition: ((aCollectionOfChildren first startPosition) - anEmphasisType requiredCount).
	emphasis children: (self cleanUp: aCollectionOfChildren).
	^ emphasis
	