parsing
process: opener and: closer

	| length |
	self attributes add: (closer attributeStartingAt: opener).
	self removeDelimitersBetween: opener and: closer.
	length := closer delimiterLengthForAttributeWith: opener.
	self cutOpener: opener to: length.
	^ self cutCloser: closer to: length