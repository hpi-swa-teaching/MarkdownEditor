parsing
createEmphasisFrom: opener and: closer

	| emphasis |
	emphasis := closer emphasisStartingAt: opener.
	emphasis content: (self content copyFrom: opener endPosition + 1 to: closer startPosition - 1).
	^ emphasis