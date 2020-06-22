tests - recognition
testMayNotBeginWith

	{'>', '> ', '# Test'} do: [:string | | line |
		line := MarkdownLine newFrom: string.
		self deny: (MarkdownHeading mayBeginWith: line)]