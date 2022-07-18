tests - divisible by three rule
testDelimiterDivisibleByThreeRule4

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: 't*t').
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't**t').

	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener)