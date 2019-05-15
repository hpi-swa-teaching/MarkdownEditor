tests - level
testFindLevelOfHeadingLevel1

	self assert: (MarkdownHeading newFrom: '#') level equals: 1
