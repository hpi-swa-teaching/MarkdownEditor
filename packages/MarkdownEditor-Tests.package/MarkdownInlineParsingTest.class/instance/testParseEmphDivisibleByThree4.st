tests - divisible by three rule
testParseEmphDivisibleByThree4
    
	| output expectedOutput emph str |
	"the affectedbyThreeRuleCloser can be opener again"
	output := parser parseInline: '*this is just plain text *this should be**bold**'.
	str := MarkdownString newFrom: '*this is just plain text *this should be'.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: 'bold').
	expectedOutput := MarkdownLinkedList newFrom: {str.emph}.

	self assert: expectedOutput equals: output