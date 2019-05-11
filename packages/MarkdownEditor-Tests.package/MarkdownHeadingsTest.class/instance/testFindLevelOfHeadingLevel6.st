tests - level
testFindLevelOfHeadingLevel6

	self assert: (MarkdownHeading levelOf: '######') equals: 6
	