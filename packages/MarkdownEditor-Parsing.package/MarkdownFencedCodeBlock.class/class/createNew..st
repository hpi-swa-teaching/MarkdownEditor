instance creation
createNew: aParsingState
	
	| matcher |
	"self halt."
	matcher := RxMatcher forString: '((\s{0,3})(`{3,1000}(?!.*`)|~{3,1000}))(.*)'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: 
				(self new
					indention: ((matcher subexpressions: 3) first size);
					openingFence: (matcher subexpression: 4);
					startPosition: aParsingState charPos;
					yourself).
				aParsingState newBlock innerLine: (matcher subexpressions: 7) first.
				^ 2].
	^ 0