tests
testFindLevelOfHeadingLevels1To6
	
	#('#' 1 '##' 2 '###' 3 '####' 4 '#####' 5 '######' 6) pairsDo: [:string :level | 
		self assert: (MarkdownHeading newFrom: string) level equals: level]
