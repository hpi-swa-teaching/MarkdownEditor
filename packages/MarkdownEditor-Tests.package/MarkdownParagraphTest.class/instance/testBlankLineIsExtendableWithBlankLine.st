tests
testBlankLineIsExtendableWithBlankLine

	| paragraph |
	paragraph := MarkdownParagraph newFrom: self blankLine.
	self assert: (paragraph isExtendableWith: self blankLine)