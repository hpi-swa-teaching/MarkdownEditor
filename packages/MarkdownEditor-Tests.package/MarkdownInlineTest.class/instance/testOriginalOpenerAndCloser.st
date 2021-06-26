tests - delimiters
testOriginalOpenerAndCloser

	| output expectedOutput |
	output := MarkdownDelimiter newFrom: 't**t'.
	expectedOutput := MarkdownDelimiter new.
	expectedOutput beOriginalOpenerAndCloser.

	self assert: expectedOutput isOriginalOpenerAndCloser equals: output isOriginalOpenerAndCloser