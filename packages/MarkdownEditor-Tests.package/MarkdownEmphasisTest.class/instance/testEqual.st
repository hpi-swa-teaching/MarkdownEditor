tests
testEqual

	| emphasis1 emphasis2 |
	emphasis1 := MarkdownEmphasis from: 1 to: 2.
	emphasis2 := MarkdownEmphasis from: 1 to: 2.
	self
		assert: emphasis1 equals: emphasis2;
		assert: emphasis1 hash equals: emphasis2 hash