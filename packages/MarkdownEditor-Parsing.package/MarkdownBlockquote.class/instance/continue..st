applying
continue: aParsingState

	| matcher |
	matcher := RxMatcher forString: '\s{0,3}>\s?(.*)'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState reduceCurrentLineTo: (matcher subexpressions: 2) first.
				^ 0].
	^ 1