tests - blocks
testBlockStructureHeadingWithParagraph

	self
		assert: {'# Heading'. 'Paragraph'}
		parsesToBlocks: {MarkdownHeading. MarkdownParagraph}