tests - level
testFindLevelOfHeadingLevel3

	self assert: (MarkdownHeading newFrom: '###') level equals: 3
	