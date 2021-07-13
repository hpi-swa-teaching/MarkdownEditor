instance creation
createNew: aParsingState
	
	| matcher |
	matcher := RxMatcher forString: '((\s*)(`{3,1000}(?!.*`)|~{3,1000}))(.*)'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: 
				(self new
					indention: ((matcher subexpression: 3) size);
					openingFence: (matcher subexpression: 4);
					startPosition: aParsingState charPos;
					info: (matcher subexpression: 7)
					yourself).
				aParsingState newBlock innerLine: (matcher subexpressions: 7) first.
				^ 2].
	^ 0