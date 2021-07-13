tests - divisible by three rule
testParseEmphDivisibleByThree2
    
	| output expectedOutput emph str |
	output := parser parseInline: '*this is just plain text *this should be**italic*'.
	str := MarkdownString newFrom: '*this is just plain text '.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: 'this should be**italic').
	expectedOutput := MarkdownLinkedList newFrom: {str.emph}.

	self assert: expectedOutput equals: output