tests - delimiters
testNoOpeningDelimiter

    | expectedOutput output |
    output := parser parse: 'this is a test without opening delimiter*'.
    expectedOutput := MarkdownLinkedList newFrom: {MarkdownString2 newFrom:  'this is a test without opening delimiter*'}.

    self assert: expectedOutput equals: output