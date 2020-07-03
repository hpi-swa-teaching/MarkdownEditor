tests
testEndPositionsAreUnequal

	| emphasis1 emphasis2 |
	emphasis1 := MarkdownItalic from: 1 to: 2.
	emphasis2 := MarkdownItalic from: 1 to: 3.
	self
		deny: emphasis1 = emphasis2;
		deny: emphasis1 hash = emphasis2 hash