tests - blocks
testBlockStructureCodeBlock

	self
		assert: {MarkdownCodeBlock}
		isParsedStructureOf: '```', Character cr, 'code', Character cr, '```'