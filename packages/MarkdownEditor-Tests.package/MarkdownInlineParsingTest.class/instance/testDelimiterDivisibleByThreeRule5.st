tests - divisible by three rule
testDelimiterDivisibleByThreeRule5

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: ' *t').
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't**t').

	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener)