tests - blocks
testBlockStructureWithMultilineParagraph

	self
		assert: {MarkdownParagraph}
		isParsedStructureOf: 'Paragraph', Character cr, 'with following text line'