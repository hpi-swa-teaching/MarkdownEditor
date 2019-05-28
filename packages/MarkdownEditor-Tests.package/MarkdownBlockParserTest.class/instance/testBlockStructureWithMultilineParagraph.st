tests - blocks
testBlockStructureWithMultilineParagraph

	self
		assert: {'Paragraph'. 'with following text line'}
		parsesToBlocks: {MarkdownParagraph}