tests
testStartPositionsAreUnequal

	| link1 link2 |
	link1 := MarkdownItalic from: 1 to: 2.
	link2 := MarkdownItalic from: 2 to: 2.
	self
		deny: link1 = link2;
		deny: link1 hash = link2 hash