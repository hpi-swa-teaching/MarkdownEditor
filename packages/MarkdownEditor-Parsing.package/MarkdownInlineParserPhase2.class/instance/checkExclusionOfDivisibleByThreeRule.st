divisible by three rule
checkExclusionOfDivisibleByThreeRule

	(self hasBeenExcludedByDivisibleOfThreeRule)
		ifTrue: [self currentCloser beNotPotentialCloser. 
				^ MarkdownDelimiter new]
		ifFalse: [^ self handleNoOpeningDelimiter]