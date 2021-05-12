tests
testEqual

	| emphasis1 emphasis2 |
	emphasis1 := MarkdownItalic from: 1 to: 2.
	emphasis2 := MarkdownItalic from: 1 to: 2.
	self
		assert: emphasis1 equals: emphasis2;
		assert: emphasis1 hash equals: emphasis2 hash.
	emphasis1 := MarkdownBold from: 1 to: 2.
	emphasis2 := MarkdownBold from: 1 to: 2.
	self
		assert: emphasis1 equals: emphasis2;
		assert: emphasis1 hash equals: emphasis2 hash.
	emphasis1 := MarkdownBold from: 1 to: 2.
	emphasis2 := MarkdownBold from: 1 to: 2.
	self
		assert: emphasis1 equals: emphasis2;
		assert: emphasis1 hash equals: emphasis2 hash.
	