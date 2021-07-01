tests - divisible by three rule
testParseEmphDivisibleByThree4
    
	| output expectedOutput emph str |
	"the affectedbyThreeRuleCloser can be opener again"
	output := parser parseInline: '*this is just plain text *this should be**bold**'.
	str := MarkdownString2 newFrom: '*this is just plain text *this should be'.
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'bold').
	expectedOutput := MarkdownLinkedList newFrom: {str.emph}.

	self assert: expectedOutput equals: output