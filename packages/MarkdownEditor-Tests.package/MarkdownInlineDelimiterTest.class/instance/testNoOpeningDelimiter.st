tests - delimiters
testNoOpeningDelimiter

    | expectedOutput output |
    output := parser parseInline: 'this is a test without opening delimiter*' with: 1.
    expectedOutput := MarkdownLinkedList newFrom: 
	{MarkdownString newFrom:  'this is a test without opening delimiter*' startingAt: 1}.

    self assert: expectedOutput equals: output