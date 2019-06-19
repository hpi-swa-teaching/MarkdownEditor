tests - matching
testMismatchHeadingLevels1To6WithUnspacedText

	#('#MiniMetro' '##the fastest game' '###on the planet!' '####cool play style'
	'#####endless fun' '######universal gratitude of passengers') do: [:string | 
		self deny: (MarkdownHeading matches: string)]