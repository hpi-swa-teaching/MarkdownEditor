tests - divisible by three rule
testDelimiterDivisibleByThreeRule

	secondPhase currentOpener: (MarkdownDelimiter newFrom: 't***t').
	secondPhase currentCloser: (MarkdownDelimiter newFrom: 't***t').

	self assert: false equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFrom: 't**t').
	secondPhase currentCloser: (MarkdownDelimiter newFrom: 't***t').

	self assert: false equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFrom: ' *t').
	secondPhase currentCloser: (MarkdownDelimiter newFrom: 't** ').

	self assert: false equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFrom: 't*t').
	secondPhase currentCloser: (MarkdownDelimiter newFrom: 't**t').

	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFrom: ' *t').
	secondPhase currentCloser: (MarkdownDelimiter newFrom: 't**t').

	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFrom: 't*t').
	secondPhase currentCloser: (MarkdownDelimiter newFrom: 't** ').

	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener).

	secondPhase currentOpener: (MarkdownDelimiter newFrom: 't*t').
	secondPhase currentOpener beNotPotentialCloser.
	self assert: true equals: (secondPhase doesDivisibleByThreeRuleApplyFor: secondPhase currentOpener)