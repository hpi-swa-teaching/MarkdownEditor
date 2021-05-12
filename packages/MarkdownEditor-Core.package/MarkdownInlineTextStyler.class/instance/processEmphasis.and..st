parsing
processEmphasis: opener and: closer

	| length token|
	token := (self createEmphasisFrom: opener and: closer).
	token ifNotNil: 
		[self inlineElements add: (self createEmphasisFrom: opener and: closer)] ifNil: [^nil].
	self removeDelimitersBetween: opener and: closer.
	length := closer delimiterLengthForEmphasisWith: opener.
	self cutOpener: opener to: length.
	^ self cutCloser: closer to: length