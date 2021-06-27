applying
continue: aParsingState

	| matcher |
	matcher := RxMatcher forString: '\s{0,3}>\s?(.*)'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState currentLine: (matcher subexpressions: 2).
			^ 0].
	^ 1