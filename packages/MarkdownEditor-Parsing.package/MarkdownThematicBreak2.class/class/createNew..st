as yet unclassified
createNew: aParsingState
	
	| matcher |
	matcher := RxMatcher forString: '\s{0,3}((\*\s*)(\*\s*)(\*\s*)+|(_\s*)(_\s*)(_\s*)+|(-\s*)(-\s*)(-\s*)+)$'.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: self new.
			aParsingState currentLine: ''.
			^ 2].
	^ 0