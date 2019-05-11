tests - level
testFindLevelOfHeadingLevel5

	self assert: (MarkdownHeading levelOf: '#####') equals: 5
	