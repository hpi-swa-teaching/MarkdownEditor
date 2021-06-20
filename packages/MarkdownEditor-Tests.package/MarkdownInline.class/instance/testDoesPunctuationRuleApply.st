tests - punctuation characters
testDoesPunctuationRuleApply

	self assert: true equals: (firstPhase doesPunctuationRuleApplyFor: 't*"' with: $*).
	
	self assert: true equals: (firstPhase doesPunctuationRuleApplyFor: '"*t' with: $*).
	
	self assert: false equals: (firstPhase doesPunctuationRuleApplyFor: ' *"' with: $*).
	
	self assert: false equals: (firstPhase doesPunctuationRuleApplyFor: '"* ' with: $*).
	
	self assert: false equals: (firstPhase doesPunctuationRuleApplyFor: '"*"' with: $*)