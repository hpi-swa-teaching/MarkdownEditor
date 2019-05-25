tests - blocks
testBlockStructureWithTwoParagraphs

	blockParser parse: 'abc

def'.
	self
		assert: 2 equals: blockParser blocks size; 
		assert: (blockParser blocks first isKindOf: MarkdownParagraph);
		assert: (blockParser blocks second isKindOf: MarkdownParagraph)
		