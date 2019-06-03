tests - blocks
testBlockStructureParagraphWithHeading

	self
		assert: {MarkdownParagraph. MarkdownHeading}
		isParsedStructureOf: 'Paragraph which is interrupted by', Character cr, '# Heading'