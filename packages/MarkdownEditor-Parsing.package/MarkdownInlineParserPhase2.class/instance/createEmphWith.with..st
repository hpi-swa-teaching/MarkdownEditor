parse
createEmphWith: anEmphasisType with: aCollectionOfChildren

	| emph |
	emph := anEmphasisType new.
	emph children: (self cleanUp: aCollectionOfChildren).
	
	^ emph
	