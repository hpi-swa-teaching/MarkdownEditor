tests - divisible by three rule
testDelimiterDivisibleByThreeRule7

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: 't*t').
	secondPhase currentOpener beNotPotentialCloser.
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't** ').
	
	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener)