tests - delimiters
testNoClosingDelimiter

    | expectedOutput output |
    output := parser parseInline: '*this is a test without closing delimiter' with: 1.
    expectedOutput := MarkdownLinkedList newFrom: 
	{MarkdownString newFrom:  '*this is a test without closing delimiter' startingAt: 1}.

    self assert: expectedOutput equals: output