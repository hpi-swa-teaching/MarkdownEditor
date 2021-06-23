tests - divisible by three rule
testParseEmphDivisibleByThree5
    
    | output expectedOutput emph |
    output := parser parse: '*this is**italic*'.

    emph := MarkdownItalic2 new.
    emph children add: (MarkdownString2 newFrom: 'this is**italic').
    expectedOutput := MarkdownLinkedList newFrom: {emph}.

    self assert: expectedOutput equals: output