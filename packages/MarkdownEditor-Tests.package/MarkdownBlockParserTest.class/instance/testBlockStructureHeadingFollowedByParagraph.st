tests - blocks
testBlockStructureHeadingFollowedByParagraph

	self
		assert: {MarkdownHeading. MarkdownParagraph}
		isParsedStructureOf: '# Heading', Character cr, 'Paragraph'