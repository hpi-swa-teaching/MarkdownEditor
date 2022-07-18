tests - divisible by three rule
testDelimiterDivisibleByThreeRule3

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: ' *t').
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't** ').

	self assert: false equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener)