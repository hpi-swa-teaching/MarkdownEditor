tests
testCreateItalicEmphasis

	| emphasis |
	emphasis := MarkdownEmphasis from: 1 to: 2.
	self assert: TextEmphasis italic equals: emphasis textAttribute