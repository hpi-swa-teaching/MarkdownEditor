instance creation
createNew: aParsingState
	
	| matcher |
	matcher := RxMatcher forString: '\s{0,3}>\s?(.*)'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: 
				(self new
					startPosition: aParsingState charPos;
					yourself).
				aParsingState newBlock innerLine: (matcher subexpressions: 2) first.
				^ 1].
	^ 0