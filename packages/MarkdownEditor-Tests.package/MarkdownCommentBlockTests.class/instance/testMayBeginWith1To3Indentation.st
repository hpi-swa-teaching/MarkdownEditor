tests - matching
testMayBeginWith1To3Indentation

	{' <!--'. '  <!--'. '   <!--'} do: [:openingLine |
		self assert: (MarkdownCommentBlock mayBeginWith: openingLine)]