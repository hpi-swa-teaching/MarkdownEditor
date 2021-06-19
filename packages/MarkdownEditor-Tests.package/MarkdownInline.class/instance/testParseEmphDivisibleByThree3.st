tests - divisible by three rule
testParseEmphDivisibleByThree3
    
    | output expectedOutput emph str |
    "the affectedByThreeRule delimiter can be closer again"
    output := parser parse: '**this should be  *bold**this not'.
    str := MarkdownString2 newFrom: 'this not'.
    emph := MarkdownBold2 new.
    emph children add: (MarkdownString2 newFrom: 'this should be  *bold').
    expectedOutput := LinkedList newFrom: {emph.str}.
    self assert: expectedOutput equals: output