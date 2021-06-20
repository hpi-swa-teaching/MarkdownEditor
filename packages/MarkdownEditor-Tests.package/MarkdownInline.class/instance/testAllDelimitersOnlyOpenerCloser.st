tests - delimiters
testAllDelimitersOnlyOpenerCloser

    | del1 del2 del3 |
    del1 := MarkdownDelimiter newFrom: ' **t'.
    del2 := MarkdownDelimiter newFrom: 't** '.
    del3 := MarkdownDelimiter newFrom: 't**t'.
    
    secondPhase delimiters: (LinkedList newFrom: {del3. del3}).
    self assert: false equals: secondPhase areAllRemainingDelimitersOnlyOpenerOrCloser.
    
    secondPhase delimiters: (LinkedList newFrom: {del1. del1}).
    self assert: true equals: secondPhase areAllRemainingDelimitersOnlyOpenerOrCloser.
    
    secondPhase delimiters: (LinkedList newFrom: {del2. del2}).
    self assert: true equals: secondPhase areAllRemainingDelimitersOnlyOpenerOrCloser.
    
    secondPhase delimiters: (LinkedList newFrom: {del1. del2}).
    self assert: false equals: secondPhase areAllRemainingDelimitersOnlyOpenerOrCloser