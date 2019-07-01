tests - matching
testMayNotBeginWithHeadingLevels1To6WithUnspacedText

	{'#hashtag'. '##missing space'. '###no heading'. '####text with four hashes'.
	 '#####text with five hashes'. '######text with six hashes'} do: [:string |
		self deny: (MarkdownHeading mayBeginWith: string)]