tests - recognition
testMayBeginWith1To3Indentations

	{' #'. '  #'. '   #'} do: [:string | | line |
		line := MarkdownLine newFrom: string.
		self assert: (MarkdownHeading mayBeginWith: line)]