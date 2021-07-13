tests - delimiters
testAllDelimitersOnlyOpenerCloser

	| del1 del2 del3 |
	del1 := MarkdownDelimiter newFromPadded: ' **t'.
 	del2 := MarkdownDelimiter newFromPadded: 't** '.
	del3 := MarkdownDelimiter newFromPadded: 't**t'.

	secondPhase delimiters: (MarkdownLinkedList newFrom: {del3. del3}).
	self assert: false equals: secondPhase areAllRemainingDelimitersOnlyOpenerOrCloser.
	
	secondPhase delimiters: (MarkdownLinkedList newFrom: {del1. del1}).
	self assert: true equals: secondPhase areAllRemainingDelimitersOnlyOpenerOrCloser.
	
	secondPhase delimiters: (MarkdownLinkedList newFrom: {del2. del2}).
	self assert: true equals: secondPhase areAllRemainingDelimitersOnlyOpenerOrCloser.
	
	secondPhase delimiters: (MarkdownLinkedList newFrom: {del1. del2}).
	self assert: false equals: secondPhase areAllRemainingDelimitersOnlyOpenerOrCloser