tests - matching
testMatchHeadingLevels1To6WithText
	
	#('# MiniMetro' '## the fastest game' '### on the planet!' '#### cool play style' 
	'##### endless fun' '###### universal gratitude of passengers') do: [:string |
		self assert: (MarkdownHeading matches: string)]