tests - recognition
testMayBeginWith

	{'> Test'. '> Test'. ' > Test'} do: [:string | | line |
		line := MarkdownLine newFrom: string.
		self assert: (MarkdownBlockquote mayBeginWith: line)].