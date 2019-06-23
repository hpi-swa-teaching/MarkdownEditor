tests - blocks
testBlockStructureParagraphInterruptedByCodeBlock

	self
		assert: {MarkdownParagraph. MarkdownCodeBlock}
		isParsedStructureOf: 'Paragraph which is interrupted by', Character cr,
			'```', Character cr, 'code', Character cr, '```'