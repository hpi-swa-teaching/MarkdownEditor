applying
continue: aParsingState

	| matcher |
	matcher := RxMatcher forString: '\s{0,3}>\s?(.*)'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState reduceCurrentLineTo: (matcher subexpression: 2).
				^ #matched].
	^ #failedMatch