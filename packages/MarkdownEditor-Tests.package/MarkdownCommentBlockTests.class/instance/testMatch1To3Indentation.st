tests - matching
testMatch1To3Indentation

	{' <!--'. '  <!--'. '   <!--'} do: [:openingLine |
		self assert: (MarkdownCommentBlock matches: openingLine)]