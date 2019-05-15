tests - level
testFindLevelOfHeadingLevel5

	self assert: (MarkdownHeading newFrom: '#####') level equals: 5
	