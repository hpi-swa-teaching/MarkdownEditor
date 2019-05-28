tests - blocks
testBlockStructureParagraphWithHeading

	self
		assert: {'Paragraph which is interrupted by'. '# Heading'}
		parsesToBlocks: {MarkdownParagraph. MarkdownHeading}