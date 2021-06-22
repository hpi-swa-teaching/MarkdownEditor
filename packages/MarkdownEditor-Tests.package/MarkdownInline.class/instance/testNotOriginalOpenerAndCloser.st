tests - delimiters
testNotOriginalOpenerAndCloser

    | output expectedOutput |
    output := MarkdownDelimiter newFrom: ' ','**','t'.
    expectedOutput := MarkdownDelimiter new.
    expectedOutput beOriginalOpenerAndCloser.
    self deny: expectedOutput isOriginalOpenerAndCloser equals: output isOriginalOpenerAndCloser