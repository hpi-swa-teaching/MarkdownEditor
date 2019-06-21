tests - blocks
testBlockStructureCodeBlockFollowedByParagraph

	self
		assert: {MarkdownCodeBlock. MarkdownParagraph}
		isParsedStructureOf: '```', Character cr, 'code', Character cr, '```', Character cr,
			'Following paragraph'