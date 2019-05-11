tests - level
testFindLevelOfHeadingLevel2

	self assert: (MarkdownHeading levelOf: '##') equals: 2
	