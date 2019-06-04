tests - extendability
testBlankLineIsExtendableWithWhitespaceLine

	| paragraph |
	paragraph := MarkdownParagraph newFrom: self blankLine.
	self assert: (paragraph isExtendableWith: self whitespaceLine)