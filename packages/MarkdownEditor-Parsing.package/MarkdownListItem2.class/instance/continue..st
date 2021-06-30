applying
continue: aParsingState
	
	| matcher |
	aParsingState currentLine isAllSeparators & self children isEmpty
	ifTrue: [^ 1].
	
	matcher := RxMatcher forString: '\s{', self container indent, '}(.*)|(\s*)'.
	(matcher matches: aParsingState currentLine)
	ifTrue: [aParsingState reduceCurrentLineTo: (matcher subexpressions: 2).
		^ 0].
	^ 1