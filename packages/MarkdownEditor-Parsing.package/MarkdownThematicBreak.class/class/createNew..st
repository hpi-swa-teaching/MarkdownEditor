instance creation
createNew: aParsingState
	
	| matcher |
	matcher := self thematicBreakRegExMatcher.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: (self newFrom: aParsingState).
				^ #matchedLeaf].
	^ #failedMatch