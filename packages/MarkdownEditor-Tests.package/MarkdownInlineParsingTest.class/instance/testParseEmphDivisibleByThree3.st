tests - divisible by three rule
testParseEmphDivisibleByThree3
    
	| output expectedOutput emph str |
	"the affectedByThreeRule delimiter can be closer again"
	output := parser parseInline: '**this should be  *bold**this not' with: 1.
	str := MarkdownString newFrom: 'this not'  startingAt: 26.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: 'this should be  *bold' startingAt: 3).
	emph startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {emph.str}.
	
	self assert: expectedOutput equals: output