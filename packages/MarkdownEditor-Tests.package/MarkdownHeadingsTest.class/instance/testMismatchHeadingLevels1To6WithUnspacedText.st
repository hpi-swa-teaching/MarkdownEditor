tests - matching
testMismatchHeadingLevels1To6WithUnspacedText

	{'#hashtag'. '##missing space'. '###no heading'. '####just text'. '#####five hashes'.
	'######long fenced railway gate'} do: [:string |
		self deny: (MarkdownHeading matches: string)]