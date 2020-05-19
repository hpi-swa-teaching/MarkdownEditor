tests
testEqual

	| link1 link2 |
	link1 := MarkdownLink from: 1 to: 2.
	link2 := MarkdownLink from: 1 to: 2.
	self
		assert: link1 equals: link2;
		assert: link1 hash equals: link2 hash