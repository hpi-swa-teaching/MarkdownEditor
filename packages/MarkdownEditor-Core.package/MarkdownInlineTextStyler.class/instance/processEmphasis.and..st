parsing
processEmphasis: opener and: closer

	| length |
	
	self inlineElements add: (self createEmphasisFrom: opener and: closer).
	self removeDelimitersBetween: opener and: closer.
	length := closer delimiterLengthForEmphasisWith: opener.
	self cutOpener: opener to: length.
	^ self cutCloser: closer to: length