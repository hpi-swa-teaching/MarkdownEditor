tests - recognition
testIsExtendableWithAsterisk

	| token |
	token := MarkdownItalicBoldDelimiter newFor: '*' at: 1.
	self assert: (token isExtendableWith: $*)