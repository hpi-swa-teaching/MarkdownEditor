tests - recognition
testIsNotExtendableWithAsterisk

	| token |
	token := MarkdownString newFor: 'a' at: 1.
	self deny: (token isExtendableWith: $*)