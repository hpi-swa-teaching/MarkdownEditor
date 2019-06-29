tests - matching
testMayBeginWithHeadingLevels1To6WithText

	{'# H1'. '## H2'. '### H3'. '#### H4'. '##### H5'. '###### H6'} do: [:string |
		self assert: (MarkdownHeading mayBeginWith: string)]