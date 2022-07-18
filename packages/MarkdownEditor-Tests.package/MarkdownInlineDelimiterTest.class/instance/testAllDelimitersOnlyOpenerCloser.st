tests - delimiters
testAllDelimitersOnlyOpenerCloser

	| del |
	del := MarkdownDelimiter newFromPadded: 't**t'.

	secondPhase delimiters: (MarkdownLinkedList newFrom: {del. del}).
	self assert: false equals: secondPhase areAllRemainingDelimitersOnlyOpenerOrCloser