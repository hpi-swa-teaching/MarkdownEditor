tests - delimiters
testAllDelimitersOnlyOpenerCloser4

	| del1 del2 |
	del1 := MarkdownDelimiter newFromPadded: ' **t'.
 	del2 := MarkdownDelimiter newFromPadded: 't** '.

	secondPhase delimiters: (MarkdownLinkedList newFrom: {del1. del2}).
	self assert: false equals: secondPhase areAllRemainingDelimitersOnlyOpenerOrCloser