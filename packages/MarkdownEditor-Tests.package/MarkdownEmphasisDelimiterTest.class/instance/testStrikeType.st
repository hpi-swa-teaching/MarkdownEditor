tests - extending
testStrikeType

	| token |
	token := MarkdownStrikeDelimiter newFor: '~' at: 1.
	token append: $~.
	self assert: token type equals: 'StrikeDelimiter'