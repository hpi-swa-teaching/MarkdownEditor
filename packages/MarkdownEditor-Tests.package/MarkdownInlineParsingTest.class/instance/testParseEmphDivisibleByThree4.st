tests - divisible by three rule
testParseEmphDivisibleByThree4
    
	| output expectedOutput emph str |
	"the affectedbyThreeRuleCloser can be opener again"
	output := parser parseInline: '*this is just plain text *this should be**bold**'.
	str := MarkdownString newFrom: '*this is just plain text *this should be'  startingAt: 1.
	emph := MarkdownBold new.
	emph startPosition: 41.
	emph children add: (MarkdownString newFrom: 'bold' startingAt: 43).
	expectedOutput := MarkdownLinkedList newFrom: {str.emph}.

	self assert: expectedOutput equals: output