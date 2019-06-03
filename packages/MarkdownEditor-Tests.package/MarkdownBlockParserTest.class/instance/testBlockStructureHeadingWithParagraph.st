tests - blocks
testBlockStructureHeadingWithParagraph

	self
		assert: {MarkdownHeading. MarkdownParagraph}
		isParsedStructureOf: '# Heading', Character cr, 'Paragraph'