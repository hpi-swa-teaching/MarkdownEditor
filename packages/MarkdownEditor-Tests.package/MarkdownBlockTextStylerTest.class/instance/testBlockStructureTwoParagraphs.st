tests - blocks
testBlockStructureTwoParagraphs

	self
		assert: {MarkdownParagraph. MarkdownParagraph. MarkdownParagraph}
		isParsedStructureOf: 'Paragraph followed by blank line', Character cr,
								Character cr, 
								'Paragraph'