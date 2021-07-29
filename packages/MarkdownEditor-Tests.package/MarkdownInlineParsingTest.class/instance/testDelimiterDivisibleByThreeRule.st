tests - divisible by three rule
testDelimiterDivisibleByThreeRule

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: 't***t').
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't***t').

	self assert: false equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener)