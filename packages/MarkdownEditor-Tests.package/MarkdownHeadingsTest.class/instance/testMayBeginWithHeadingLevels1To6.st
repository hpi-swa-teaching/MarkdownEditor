tests - recognition
testMayBeginWithHeadingLevels1To6

	{'#'. '##'. '###'. '####'. '#####'. '######'} do: [:string | | line |
		line := MarkdownLine newFrom: string.
		self assert: (MarkdownHeading mayBeginWith: line)]