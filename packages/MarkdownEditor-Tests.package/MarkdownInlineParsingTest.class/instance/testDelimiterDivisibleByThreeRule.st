tests - divisible by three rule
testDelimiterDivisibleByThreeRule

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: 't***t').
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't***t').

	self assert: false equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: 't**t').
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't***t').

	self assert: false equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: ' *t').
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't** ').

	self assert: false equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: 't*t').
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't**t').

	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: ' *t').
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't**t').

	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: 't*t').
	secondPhase currentCloser: (MarkdownDelimiter newFromPadded: 't** ').

	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFromPadded: 't*t').
	secondPhase currentOpener beNotPotentialCloser.
	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener)