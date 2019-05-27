tests - blocks
testBlockStructureTwoHeadings

	blockParser parse: '# Title 1
# Title 2'.
	self assert: 2 equals: blockParser blocks size.
	self assert: (blockParser blocks first isKindOf: MarkdownHeading).
	self assert: (blockParser blocks second isKindOf: MarkdownHeading)