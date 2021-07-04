instance creation
createNew: aParsingState
	
	| matcher |
	matcher := RxMatcher forString: '((\s*)(`{3,1000}(?!.*`)|~{3,1000}))(.*)'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: 
				(self new
					indention: ((matcher subexpressions: 3) first size);
					openingFence: ((matcher subexpressions: 4) first);
					startPosition: aParsingState charPos;
					yourself).
				aParsingState newBlock innerLine: (matcher subexpressions: 7) first.
				^ 2].
	^ 0