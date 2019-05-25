tests - blocks
testBlockStructureWithParagraph

	blockParser parse: 'abc'.
	self assert: (blockParser blocks first isKindOf: MarkdownParagraph)