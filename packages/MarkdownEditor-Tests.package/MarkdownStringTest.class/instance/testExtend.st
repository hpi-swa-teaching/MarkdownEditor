tests - extending
testExtend

	| token |
	token := MarkdownString newFor: 'a' at: 1.
	token extendWith: $b.
	self assert: 'ab' equals: token content