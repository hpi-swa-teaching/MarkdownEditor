tests - recognition
testIsExtendableWithAsterisk

	| token |
	token := MarkdownEmphasisDelimiter newFor: '*' at: 1.
	self assert: (token isExtendableWith: $*)