tests - delimiters
testAllDelimitersOfSameType

    | del1 del2 |
    del1 := MarkdownDelimiter newFrom: ' **t'.
    del2 := MarkdownDelimiter newFrom: 't~~ '.
    
    secondPhase delimiters: (LinkedList newFrom: {del1. del1}).
    self assert: true equals: secondPhase areAllRemainingDelimitersOfSameType.
    
    secondPhase delimiters: (LinkedList newFrom: {del1. del2}).
    self assert: false equals: secondPhase areAllRemainingDelimitersOfSameType