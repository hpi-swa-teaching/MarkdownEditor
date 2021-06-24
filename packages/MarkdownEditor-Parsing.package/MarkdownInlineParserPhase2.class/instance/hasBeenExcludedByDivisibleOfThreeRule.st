divisible by three rule
hasBeenExcludedByDivisibleOfThreeRule

	| remainingDelimiters |
	remainingDelimiters := self delimiters copyFrom: 1 to: (self delimiters indexOf: self currentCloser) - 1.
	^ remainingDelimiters
		anySatisfy: [:delimiter | delimiter isPotentialOpener
				and: [self currentCloser type = delimiter type]
				and: [self doesDivisibleByThreeRuleApplyFor: delimiter]]