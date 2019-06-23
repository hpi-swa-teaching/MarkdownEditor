tests - matching
testMismatchHeadingLevels1To6WithUnspacedText

	{'#H1'. '##H2'. '###H3'. '####H4'. '#####H5'. '######H6'} do: [:string |
		self deny: (MarkdownHeading matches: string)]