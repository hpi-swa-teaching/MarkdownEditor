tests - extendability
testWhitespaceLineIsExtendableWithWhitespaceLine

	| paragraph |
	paragraph := MarkdownParagraph newFrom: self whitespaceLine.
	self assert: (paragraph isExtendableWith: self whitespaceLine)