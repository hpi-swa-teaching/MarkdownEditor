tests - recognition
testMayBeginWith1To3Indentation

	{' <!--'. '  <!--'. '   <!--'} do: [:openingString | | line |
		line := MarkdownLine newFrom: openingString.
		self assert: (MarkdownCommentBlock mayBeginWith: line)]