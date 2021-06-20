tests - delimiters
testNoClosingDelimiter

    | expectedOutput output |
    output := parser parse: '*this is a test without closing delimiter'.
    expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom:  '*this is a test without closing delimiter'}.
    self assert: expectedOutput equals: output