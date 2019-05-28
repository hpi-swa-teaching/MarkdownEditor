tests - blocks
testBlockStructureWithTwoParagraphs

	self
		assert: {'Paragraph followed by blank line'. ''. 'Paragraph'}
		parsesToBlocks: {MarkdownParagraph. MarkdownParagraph}