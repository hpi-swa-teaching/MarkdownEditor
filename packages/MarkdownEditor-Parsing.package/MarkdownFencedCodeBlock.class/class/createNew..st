instance creation
createNew: aParsingState
	
	| matcher |
	matcher := RxMatcher forString: '((\s{0,3})(`{3,1000}(?!.*`)|~{3,1000}))(.*)'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock:
				(self new
					indention: ((matcher subexpression: 3) size);
					openingFence: (matcher subexpression: 4);
					startPosition: aParsingState charPos;
					info: (matcher subexpression: 7) withBlanksTrimmed;
					innerStartPosition: aParsingState charPos + (matcher subexpression: 7) size + (matcher subexpression: 4) size;
					yourself).
				aParsingState newBlock innerLine: (matcher subexpression: 7).
				^ 2].
	^ 0