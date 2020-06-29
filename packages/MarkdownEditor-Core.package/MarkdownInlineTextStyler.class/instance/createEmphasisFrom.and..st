parsing
createEmphasisFrom: opener and: closer

	| emphasis |
	emphasis := closer emphasisStartingAt: opener.
	emphasis content: (self content copyFrom: emphasis startPosition + 1 to: emphasis endPosition - 1).
	^ emphasis