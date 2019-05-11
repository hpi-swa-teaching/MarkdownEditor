tests - level
testFindLevelOfHeadingLevel3

	self assert: (MarkdownHeading levelOf: '###') equals: 3
	