tests
testCreateItalicEmphasis

	| emphasis |
	emphasis := MarkdownItalic from: 1 to: 2.
	self assert: TextEmphasis italic equals: emphasis textAttribute