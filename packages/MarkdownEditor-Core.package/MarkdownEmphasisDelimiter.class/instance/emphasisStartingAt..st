attribute
emphasisStartingAt: openingEmphasisDelimiter

	| delimiterLength start end |
	delimiterLength := self delimiterLengthForEmphasisWith: openingEmphasisDelimiter.
	start := openingEmphasisDelimiter endPosition - delimiterLength + 1.
	end := self startPosition + delimiterLength - 1.
	^ self emphasisFrom: start to: end delimiterLength: delimiterLength
	
