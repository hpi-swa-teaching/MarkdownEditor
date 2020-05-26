tests
testEndPositionsAreUnequal

	| link1 link2 |
	link1 := MarkdownLink from: 1 to: 2.
	link2 := MarkdownLink from: 1 to: 3.
	self
		deny: link1 = link2;
		deny: link1 hash = link2 hash