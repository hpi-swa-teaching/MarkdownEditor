tests - extendability
testWhitespaceLineIsExtendableWithBlankLine

	| paragraph |
	paragraph := MarkdownParagraph newFrom: self whitespaceLine.
	self assert: (paragraph isExtendableWith: self blankLine)