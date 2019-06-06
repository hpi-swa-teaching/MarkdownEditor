tests - extendability
testWhitespaceLineIsNotExtendableWithTextLine

	| paragraph |
	paragraph := MarkdownParagraph newFrom: self whitespaceLine.
	self deny: (paragraph isExtendableWith: self textLine)