tests - punctuation characters
testDoesPunctuationRuleApply3

	self assert: false equals: (firstPhase doesPunctuationRuleApplyFor: ' *"' with: $*)