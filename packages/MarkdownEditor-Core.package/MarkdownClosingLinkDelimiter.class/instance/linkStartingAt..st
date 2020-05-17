attribute
linkStartingAt: openingLinkDelimiter

	| start end |
	start := openingLinkDelimiter endPosition.
	end := self startPosition.
	^ self linkFrom: start to: end
	
