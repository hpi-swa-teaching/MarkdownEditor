divisible by three rule
doesDivisibleByThreeRuleApplyFor: anOpeningDelimiter

	((anOpeningDelimiter count isDivisibleBy: 3) 
		and: [self currentCloser count isDivisibleBy: 3])
			ifTrue: [^ false].
	((anOpeningDelimiter count + self currentCloser count) isDivisibleBy: 3)
		ifFalse: [^ false].
	((self currentCloser isOriginalOpenerAndCloser)
		or: [anOpeningDelimiter isOriginalOpenerAndCloser])
			ifFalse: [^ false].
	^ true
