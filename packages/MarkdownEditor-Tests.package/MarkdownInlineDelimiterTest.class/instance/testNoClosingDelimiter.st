tests - delimiters
testNoClosingDelimiter

    | expectedOutput output |
    output := parser parseInline: '*this is a test without closing delimiter'.
    expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom:  '*this is a test without closing delimiter'}.

    self assert: expectedOutput equals: output