helper
findPotentialOpenerPosition

	| remainingDelimiters |
	remainingDelimiters := self delimiters copiedFrom: 1 to: (self delimiters indexOf: self currentCloser) - 1.
	^ remainingDelimiters 
		findLast: [:del | del isPotentialOpener
			and: [self currentCloser type = del type]
			and: [(self doesDivisibleByThreeRuleApplyFor: del) not]]