instance creation
createNew: aParsingState
	
	| matcher |
	matcher := RxMatcher forString: '((\s*)(`{3,}(?!.*`)|~{3,})).*'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: 
				(self new
					indention: ((matcher subexpressions: 3) first size);
					openingFence: ((matcher subexpressions: 4) first);
					yourself).
			aParsingState reduceCurrentLineTo: (matcher subexpressions: 2) first.
			^ 2].
	^ 0