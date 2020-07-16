tests - extendability
testWhitespaceLineIsNotExtendableWithBlankLine

	| paragraph |
	paragraph := MarkdownParagraph newFrom: self whitespaceLine.
	self assert: (paragraph isExtendableWith: self blankLine) not