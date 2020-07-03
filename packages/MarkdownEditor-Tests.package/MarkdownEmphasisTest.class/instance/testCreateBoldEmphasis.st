tests
testCreateBoldEmphasis
	
	| emphasis |
	emphasis := MarkdownBold from: 1 to: 2.
	self assert: TextEmphasis bold equals: emphasis textAttribute