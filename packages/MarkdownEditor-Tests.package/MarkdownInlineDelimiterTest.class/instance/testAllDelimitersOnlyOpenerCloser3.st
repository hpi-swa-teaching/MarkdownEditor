tests - delimiters
testAllDelimitersOnlyOpenerCloser3

	| del |
	del := MarkdownDelimiter newFromPadded: 't** '.

	secondPhase delimiters: (MarkdownLinkedList newFrom: {del. del}).
	self assert: true equals: secondPhase areAllRemainingDelimitersOnlyOpenerOrCloser