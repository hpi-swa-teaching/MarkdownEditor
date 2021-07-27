tests - divisible by three rule
testParseEmphDivisibleByThree5
    
	| output expectedOutput emph |
	output := parser parseInline: '*this is**italic*' with: 1.
	emph := MarkdownItalic new.
	emph startPosition: 1.
	emph children add: (MarkdownString newFrom: 'this is**italic' startingAt: 2).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.

	self assert: expectedOutput equals: output