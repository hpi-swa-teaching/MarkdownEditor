tests
testDifferentEmphasisType

	| emphasis1 emphasis2 emphasis3 |
	emphasis1 := MarkdownItalic from: 1 to: 2.
	emphasis2 := MarkdownBold from: 1 to: 3.
	emphasis3 := MarkdownStrike from: 1 to: 4.
	self
		deny: emphasis1 = emphasis2 = emphasis3;
		deny: emphasis1 hash = emphasis2 hash = emphasis3 hash.