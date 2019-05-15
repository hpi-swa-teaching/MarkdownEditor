tests - level
testFindLevelOfHeadingLevel6

	self assert: (MarkdownHeading newFrom: '######') level equals: 6
	