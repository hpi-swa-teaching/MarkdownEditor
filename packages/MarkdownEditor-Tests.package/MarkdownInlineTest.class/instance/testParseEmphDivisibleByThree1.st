tests - divisible by three rule
testParseEmphDivisibleByThree1
    
	| output expectedOutput |
 	output := parser parseInline: '*this is just plain**text'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString2 newFrom: '*this is just plain**text'}.

	self assert: expectedOutput equals: output