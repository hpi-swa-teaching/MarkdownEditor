tests - extendability
testBlankLineIsNotExtendableWithBlankLine
"rename this?"

	| paragraph |
	paragraph := MarkdownParagraph newFrom: self blankLine.
	self assert: (paragraph isExtendableWith: self blankLine) not