helper
findOpener

	| opener potentialOpenerPosition |
	potentialOpenerPosition := self findPotentialOpenerPosition.
	(potentialOpenerPosition = 0)
		ifTrue: [(self hasBeenExcludedByDivisibleOfThreeRule)
					ifTrue: [self currentCloser beNotPotentialCloser. 
							^ MarkdownDelimiter new]
					ifFalse: [^ self handleNoOpeningDelimiter]].
	opener := self delimiters at: potentialOpenerPosition.
	opener inlineIndex: (self inlineIndexOf: opener).
	^ opener
