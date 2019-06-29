tests - extending
testExtend

	| token |
	token := MarkdownString newFor: 'a' at: 1.
	token append: $b.
	self assert: 'ab' equals: token content