tests - matching
testMatchHeadingLevels1To6

	{'#'. '##'. '###'. '####'. '#####'. '######'} do: [:string |
		self assert: (MarkdownHeading matches: string)]