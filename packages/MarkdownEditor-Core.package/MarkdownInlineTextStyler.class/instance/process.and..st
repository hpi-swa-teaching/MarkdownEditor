parsing
process: opener and: closer

	| length |
	self emphases add: (closer emphasisStartingAt: opener).
	self removeDelimitersBetween: opener and: closer.
	length := closer delimiterLengthForEmphasisWith: opener.
	self cutOpener: opener to: length.
	^ self cutCloser: closer to: length