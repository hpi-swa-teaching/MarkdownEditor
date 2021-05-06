tests - recognition
testIsNotExtendableWithText

	| token |
	token := MarkdownItalicBoldDelimiter newFor: '*' at: 1.
	self deny: (token isExtendableWith: $b)