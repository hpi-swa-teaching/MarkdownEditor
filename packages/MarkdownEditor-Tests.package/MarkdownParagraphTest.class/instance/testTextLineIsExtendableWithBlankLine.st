tests
testTextLineIsExtendableWithBlankLine

	| paragraph |
	paragraph := MarkdownParagraph newFrom: self textLine.
	self assert: (paragraph isExtendableWith: self blankLine)