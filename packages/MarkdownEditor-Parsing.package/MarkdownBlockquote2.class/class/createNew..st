instance creation
createNew: aParsingState

	| matcher |
	matcher := RxMatcher forString: '\s{0,3}>\s?(.*)'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: self new.
			aParsingState reduceCurrentLineTo: (matcher subexpressions: 2).
			^ 1].
	^ 0