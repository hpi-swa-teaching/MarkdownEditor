applying
continue: aParsingState
	
	| matcher |
	aParsingState currentLine isAllSeparators & self children isEmpty
		ifTrue: [^ 1].
	matcher := RxMatcher forString: '\s{', self container indention, '}(.*)|(\s*)'.
	(matcher matches: aParsingState currentLine)
	ifTrue: [aParsingState reduceCurrentLineTo: ((matcher subexpressions: 2) at: 1 
			ifAbsent: [(matcher subexpressions: 3) at: 1]).
			^ 0].
	^ 1