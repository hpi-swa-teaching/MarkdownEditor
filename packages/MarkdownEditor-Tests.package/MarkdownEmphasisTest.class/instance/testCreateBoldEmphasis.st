tests
testCreateBoldEmphasis
	
	| emphasis |
	emphasis := MarkdownEmphasis strongFrom: 1 to: 2.
	self assert: TextEmphasis bold equals: emphasis textAttribute