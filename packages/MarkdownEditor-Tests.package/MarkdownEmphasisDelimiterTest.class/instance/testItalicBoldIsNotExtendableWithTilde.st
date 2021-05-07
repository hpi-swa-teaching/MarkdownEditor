tests - recognition
testItalicBoldIsNotExtendableWithTilde

	| token |
	token := MarkdownItalicBoldDelimiter newFor: '*' at: 1.
	self deny: (token isExtendableWith: $~)