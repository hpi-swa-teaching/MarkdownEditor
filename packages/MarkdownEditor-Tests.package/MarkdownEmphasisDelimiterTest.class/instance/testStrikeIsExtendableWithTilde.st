tests - recognition
testStrikeIsExtendableWithTilde

	| token |
	token := MarkdownStrikeDelimiter newFor: '~' at: 1.
	self assert: (token isExtendableWith: $~)