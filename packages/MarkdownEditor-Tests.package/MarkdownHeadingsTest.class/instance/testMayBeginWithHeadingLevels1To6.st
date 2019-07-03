tests - matching
testMayBeginWithHeadingLevels1To6

	{'#'. '##'. '###'. '####'. '#####'. '######'} do: [:string |
		self assert: (MarkdownHeading mayBeginWith: string)]