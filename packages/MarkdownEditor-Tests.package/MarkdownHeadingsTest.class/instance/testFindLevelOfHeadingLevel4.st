tests - level
testFindLevelOfHeadingLevel4

	self assert: (MarkdownHeading newFrom: '####') level equals: 4
	