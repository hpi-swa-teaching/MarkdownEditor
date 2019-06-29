tests - matching
testMayBeginWith1To3Indentations

	{' #'. '  #'. '   #'} do: [:string |
		self assert: (MarkdownHeading mayBeginWith: string)]