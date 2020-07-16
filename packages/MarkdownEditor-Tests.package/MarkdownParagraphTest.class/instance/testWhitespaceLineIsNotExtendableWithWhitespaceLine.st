tests - extendability
testWhitespaceLineIsNotExtendableWithWhitespaceLine

	| paragraph |
	paragraph := MarkdownParagraph newFrom: self whitespaceLine.
	self assert: (paragraph isExtendableWith: self whitespaceLine) not