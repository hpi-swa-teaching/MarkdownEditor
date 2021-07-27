tests - divisible by three rule
testParseEmphDivisibleByThree2
    
	| output expectedOutput emph str |
	output := parser parseInline: '*this is just plain text *this should be**italic*' with: 1.
	str := MarkdownString newFrom: '*this is just plain text ' startingAt: 1.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: 'this should be**italic' startingAt: 27).
	emph startPosition: 26.
	expectedOutput := MarkdownLinkedList newFrom: {str.emph}.

	self assert: expectedOutput equals: output