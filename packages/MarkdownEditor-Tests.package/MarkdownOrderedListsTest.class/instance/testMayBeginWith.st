tests
testMayBeginWith

	self assert: (MarkdownList mayBeginWith: '-') not.
	self assert: (MarkdownList mayBeginWith: '*') not