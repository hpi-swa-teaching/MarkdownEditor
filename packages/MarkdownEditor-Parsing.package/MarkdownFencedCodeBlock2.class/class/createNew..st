instance creation
createNew: aParsingState
	
	| matcher |
	self halt.
	matcher := RxMatcher forString: '((\s*)(`{3,1000}(?!.*`)|~{3,1000}))(.*)'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: 
				(self new
					indention: ((matcher subexpressions: 3) first size);
					openingFence: ((matcher subexpressions: 4) first);
					yourself).
			aParsingState reduceCurrentLineTo: (matcher subexpressions: 5) first.
			^ 2].
	^ 0