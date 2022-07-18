tests - punctuation characters
testDoesPunctuationRuleApply

	self assert: true equals: (firstPhase doesPunctuationRuleApplyFor: 't*"' with: $*)