tests - blocks
testBlockStructureHeading

	blockParser parse: '# Title'.
	self assert: (blockParser blocks first isKindOf: MarkdownHeading)