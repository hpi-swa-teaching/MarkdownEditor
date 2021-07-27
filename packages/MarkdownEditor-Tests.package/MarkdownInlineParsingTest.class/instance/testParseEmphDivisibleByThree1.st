tests - divisible by three rule
testParseEmphDivisibleByThree1
    
	| output expectedOutput |
 	output := parser parseInline: '*this is just plain**text' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '*this is just plain**text' startingAt: 1}.

	self assert: expectedOutput equals: output