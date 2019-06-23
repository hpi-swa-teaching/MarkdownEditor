tests - matching
testMatch1To3Indentations

	{' #'. '  #'. '   #'} do: [:string |
		self assert: (MarkdownHeading matches: string)]