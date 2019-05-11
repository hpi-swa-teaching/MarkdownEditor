tests - level
testFindLevelOfHeadingLevel4

	self assert: (MarkdownHeading levelOf: '####') equals: 4
	