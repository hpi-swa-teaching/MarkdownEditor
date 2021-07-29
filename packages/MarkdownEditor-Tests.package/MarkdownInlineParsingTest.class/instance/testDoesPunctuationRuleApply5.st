tests - punctuation characters
testDoesPunctuationRuleApply5

	self assert: false equals: (firstPhase doesPunctuationRuleApplyFor: '"*"' with: $*)