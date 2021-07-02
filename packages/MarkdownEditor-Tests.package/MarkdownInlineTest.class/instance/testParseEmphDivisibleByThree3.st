tests - divisible by three rule
testParseEmphDivisibleByThree3
    
	| output expectedOutput emph str |
	"the affectedByThreeRule delimiter can be closer again"
	output := parser parseInline: '**this should be  *bold**this not'.
	str := MarkdownString newFrom: 'this not'.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: 'this should be  *bold').
	expectedOutput := MarkdownLinkedList newFrom: {emph.str}.
	
	self assert: expectedOutput equals: output