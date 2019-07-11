tests - recognition
testMayBeginWithHeadingLevels1To6WithText

	{'# H1'. '## H2'. '### H3'. '#### H4'. '##### H5'. '###### H6'} do: [:string | | line |
		line := MarkdownLine newFrom: string.
		self assert: (MarkdownHeading mayBeginWith: line)]