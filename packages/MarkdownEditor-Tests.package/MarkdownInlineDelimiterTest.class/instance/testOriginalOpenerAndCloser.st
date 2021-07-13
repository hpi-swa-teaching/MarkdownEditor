tests - delimiters
testOriginalOpenerAndCloser

	| output expectedOutput |
	output := MarkdownDelimiter newFromPadded: 't**t'.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput beOriginalOpenerAndCloser.

	self assert: expectedOutput isOriginalOpenerAndCloser equals: output isOriginalOpenerAndCloser