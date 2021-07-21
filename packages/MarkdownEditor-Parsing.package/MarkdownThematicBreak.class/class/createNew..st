instance creation
createNew: aParsingState
	
	| matcher |
	matcher := RxMatcher forString: '\s{0,3}((\*\s*)(\*\s*)(\*\s*)+|(_\s*)(_\s*)(_\s*)+|(-\s*)(-\s*)(-\s*)+)$'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: 
				(self new
					startPosition: aParsingState charPos;
					yourself).
				aParsingState newBlock innerLine: ''.
				^ 2].
	^ 0