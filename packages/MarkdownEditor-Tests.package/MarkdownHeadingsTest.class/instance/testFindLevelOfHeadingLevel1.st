tests - level
testFindLevelOfHeadingLevel1

	self assert: (MarkdownHeading levelOf: '#') equals: 1
	