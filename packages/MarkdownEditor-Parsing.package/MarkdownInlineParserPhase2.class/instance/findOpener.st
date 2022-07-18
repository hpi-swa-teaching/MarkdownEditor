helper
findOpener

	| opener potentialOpenerPosition |
	potentialOpenerPosition := self findPotentialOpenerPosition.
	(potentialOpenerPosition = 0)
		ifTrue: [^ self checkExclusionOfDivisibleByThreeRule].
	opener := self delimiters at: potentialOpenerPosition.
	opener inlineIndex: (self inlineElements markdownIndexOf: opener).
	^ opener
