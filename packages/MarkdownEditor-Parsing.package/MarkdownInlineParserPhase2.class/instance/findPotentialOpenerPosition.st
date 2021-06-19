helper
findPotentialOpenerPosition

    | remainingDelimiters |
    remainingDelimiters := self delimiters
        copyFrom: 1
        to: (self delimiters indexOf: self currentCloser) - 1.
    ^ remainingDelimiters 
		findLast: [:del | 
			del isPotentialOpener
				and: [self currentCloser type = del type]
				and: [(self doesDivisibleByThreeRuleApplyFor: del) not]]