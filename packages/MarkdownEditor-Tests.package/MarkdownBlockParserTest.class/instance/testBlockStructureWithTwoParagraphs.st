tests - blocks
testBlockStructureWithTwoParagraphs

	self
		assert: {MarkdownParagraph. MarkdownParagraph}
		isParsedStructureOf: 'Paragraph followed by blank line', Character cr,
								Character cr, 
								'Paragraph'