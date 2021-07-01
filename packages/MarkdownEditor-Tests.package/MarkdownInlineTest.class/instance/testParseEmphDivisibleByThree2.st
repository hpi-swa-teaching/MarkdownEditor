tests - divisible by three rule
testParseEmphDivisibleByThree2
    
	| output expectedOutput emph str |
	output := parser parseInline: '*this is just plain text *this should be**italic*'.
	str := MarkdownString2 newFrom: '*this is just plain text '.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: 'this should be**italic').
	expectedOutput := MarkdownLinkedList newFrom: {str.emph}.

	self assert: expectedOutput equals: output