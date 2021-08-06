instance creation
createNew: aParsingState
	
	| matcher |
	matcher := self codeRegExMatcher.
	(matcher matches: aParsingState currentLine)
		ifTrue: [aParsingState newBlock: (self newFrom: matcher and: aParsingState).
				^ #matchedLeaf].
	^ #failedMatch