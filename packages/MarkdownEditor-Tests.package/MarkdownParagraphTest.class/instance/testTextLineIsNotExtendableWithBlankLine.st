tests - extendability
testTextLineIsNotExtendableWithBlankLine

	| paragraph |
	paragraph := MarkdownParagraph newFrom: self textLine.
	self assert: (paragraph isExtendableWith: self blankLine) not