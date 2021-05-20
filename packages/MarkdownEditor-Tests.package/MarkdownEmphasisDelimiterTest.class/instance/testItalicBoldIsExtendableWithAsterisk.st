tests - recognition
testItalicBoldIsExtendableWithAsterisk

	| token |
	token := MarkdownItalicBoldDelimiter newFor: '*' at: 1.
	self assert: (token isExtendableWith: $*)