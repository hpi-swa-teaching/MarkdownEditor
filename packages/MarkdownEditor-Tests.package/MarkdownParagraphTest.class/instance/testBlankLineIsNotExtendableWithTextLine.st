tests - expandability
testBlankLineIsNotExtendableWithTextLine

	| paragraph |
	paragraph := MarkdownParagraph newFrom: self blankLine.
	self deny: (paragraph isExtendableWith: self textLine)