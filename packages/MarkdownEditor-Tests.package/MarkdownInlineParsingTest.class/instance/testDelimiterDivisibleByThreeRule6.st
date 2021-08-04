tests - divisible by three rule
testDelimiterDivisibleByThreeRule6

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: 't*t').
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't** ').

	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener)