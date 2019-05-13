tests - level
testFindLevelOfHeadingLevel2

	self assert: (MarkdownHeading newFrom: '##') level equals: 2

	