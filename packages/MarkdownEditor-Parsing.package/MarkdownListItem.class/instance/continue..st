applying
continue: aParsingState
	
	| matcher |
	(aParsingState currentLine isAllSeparators and: [self children isEmpty])
		ifTrue: [^ #failedMatch].
	matcher := RxMatcher forString: '\s{', self container indentation, '}(.*)|(\s*)'.
	(matcher matches: aParsingState currentLine)
	ifTrue: [aParsingState reduceCurrentLineTo: ((matcher subexpressions: 2) at: 1 
			ifAbsent: [matcher subexpression: 3]).
			^ #matched].
	^ #failedMatch