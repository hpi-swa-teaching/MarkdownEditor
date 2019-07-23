attributes
attributeStartingAt: openingEmphasisDelimiter

	| delimiterLength start end |
	delimiterLength := self delimiterLengthForAttributeWith: openingEmphasisDelimiter.
	start := openingEmphasisDelimiter endPosition - delimiterLength + 1.
	end := self startPosition + delimiterLength - 1.
	^ self attributeFrom: start to: end delimiterLength: delimiterLength
	
