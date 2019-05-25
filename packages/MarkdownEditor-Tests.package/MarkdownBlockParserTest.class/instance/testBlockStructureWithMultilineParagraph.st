tests - blocks
testBlockStructureWithMultilineParagraph

	blockParser parse: 'abc
def'.
	self
		assert: 1 equals: blockParser blocks size; 
		assert: (blockParser blocks first isKindOf: MarkdownParagraph)
		