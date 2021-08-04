instance creation
createNew: aParsingState
	
	| matcher |
	matcher := self blockquoteRegExMatcher.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: (self newFrom: matcher and: aParsingState).
				^ 1].
	^ 0