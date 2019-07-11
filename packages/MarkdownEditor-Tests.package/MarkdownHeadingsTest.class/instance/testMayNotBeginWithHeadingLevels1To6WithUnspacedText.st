tests - recognition
testMayNotBeginWithHeadingLevels1To6WithUnspacedText

	{'#hashtag'. '##missing space'. '###no heading'. '####text with four hashes'.
	 '#####text with five hashes'. '######text with six hashes'} do: [:string | | line |
		line := MarkdownLine newFrom: string.
		self deny: (MarkdownHeading mayBeginWith: line)]